using demoQLSV.Database;
using System;
using System.Web.UI.WebControls;

namespace demoQLSV
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStudents();
            }
        }

        private void LoadStudents()
        {
            RunData run = new RunData();
            string strSQL = "SELECT * FROM SinhVien";
            grvSinhVien.DataSource = run.GetData(strSQL);
            grvSinhVien.DataBind();
        }

        public string TranslateGT(object obj)
        {
            bool gt = bool.Parse(obj.ToString());
            return gt ? "Nam" : "Nữ";
        }

        protected void grvSinhVien_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            grvSinhVien.EditIndex = e.NewEditIndex;
            LoadStudents();
        }

        protected void grvSinhVien_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            grvSinhVien.EditIndex = -1;
            LoadStudents();
        }

        protected void grvSinhVien_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            string _masv = grvSinhVien.DataKeys[e.RowIndex].Value.ToString().Trim();
            string _hoten = ((TextBox)grvSinhVien.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string _lop= ((TextBox)grvSinhVien.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            float _dtb= float.Parse(((TextBox)grvSinhVien.Rows[e.RowIndex].Cells[4].Controls[0]).Text);
            string _gioitinh = ((DropDownList)grvSinhVien.Rows[e.RowIndex].Cells[2].FindControl("ddlGioiTinh")).SelectedValue;

            string strSQL = "Update SinhVien SET hoten=N'"+_hoten+"', lop=N'"+_lop+"', dtb="+_dtb+", gioitinh="+_gioitinh
                            + " WHERE masv=N'"+_masv+"'";
            RunData run = new RunData();
            run.Execute(strSQL);

            grvSinhVien.EditIndex = -1;
            LoadStudents();
        }

        protected void grvSinhVien_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string _masv = grvSinhVien.DataKeys[e.RowIndex].Value.ToString().Trim();
            string strSQL = "DELETE FROM SinhVien WHERE masv=N'" + _masv + "'";
            RunData run = new RunData();
            run.Execute(strSQL);
            LoadStudents();
        }

        protected void grvSinhVien_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && grvSinhVien.EditIndex == -1)
            {
                ((LinkButton)e.Row.Cells[5].Controls[2]).OnClientClick =
                    "return confirm('Bạn có chắc chắn muốn xoá không?')";
            }
        }

        protected void grvSinhVien_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string _masv = grvSinhVien.DataKeys[e.NewSelectedIndex].Value.ToString().Trim();
            Response.Redirect("StudentDetail.aspx?masv="+_masv);
        }
    }
}