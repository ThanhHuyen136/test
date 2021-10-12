using System;
using demoQLSV.Database;
using System.Data;

namespace demoQLSV
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string _masv = Request.QueryString["masv"].ToString().Trim();
            string strSQL = "SELECT masv,hoten,lop,gioitinh,ngaysinh,dtb,ghichu " +
                            "FROM SinhVien WHERE masv=N'" + _masv + "'";
            RunData run = new RunData();
            DataTable dt=run.GetData(strSQL);

            lblMaSV.Text = _masv;
            lblHoTen.Text = dt.Rows[0][1].ToString();
            lblLop.Text = dt.Rows[0][2].ToString();
            bool gt = bool.Parse(dt.Rows[0][3].ToString());
            lblGioiTinh.Text = gt==true?"Nam":"Nữ";
            DateTime ns = DateTime.Parse(dt.Rows[0][4].ToString());
            lblNgaySinh.Text = ns.ToShortDateString();
            lblDiemTB.Text = dt.Rows[0][5].ToString();
            lblGhiChu.Text = dt.Rows[0][6].ToString();
        }
    }
}