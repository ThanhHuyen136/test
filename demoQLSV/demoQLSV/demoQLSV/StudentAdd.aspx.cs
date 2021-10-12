using System;
using demoQLSV.Database;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demoQLSV
{
    public partial class StudentAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLop();
            }
        }

        private void LoadLop()
        {
            RunData run = new RunData();
            string strSQL = "SELECT * FROM tblLOP";
            ddlLop.DataSource = run.GetData(strSQL);
            ddlLop.DataTextField = "tenlop";
            ddlLop.DataValueField = "tenlop";
            ddlLop.DataBind();
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string _masv = txtMaSV.Text.Trim();
            string _hoten = txtHoTen.Text;
            string _lop = ddlLop.SelectedValue;
            string _ngaysinh = txtNgaySinh.Text;
            int _gioitinh = int.Parse(ddlGioiTinh.SelectedValue);
            float _dtb = float.Parse(txtDiemTB.Text);
            string _ghichu = txtGhiChu.Text;

            string strSQL = "INSERT  INTO  SinhVien (masv,hoten,lop,ngaysinh,gioitinh,dtb,ghichu)" +
                            " VALUES (N'"+_masv+"', N'"+_hoten+"', N'"+_lop+"', '"+_ngaysinh+"', "+
                            _gioitinh+","+_dtb+", N'"+_ghichu+"')";
            RunData run = new RunData();
            run.Execute(strSQL);

            Response.Redirect("Student.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}