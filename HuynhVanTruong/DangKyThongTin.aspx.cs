using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuynhVanTruong
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlNgay.Items.Add(new ListItem("--Chọn ngày--", ""));
                for (int i = 1; i <= 31; i++)
                {
                    ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
                ddlThang.Items.Add(new ListItem("--chọn tháng--", ""));
                for (int i = 1; i <= 12; i++)
                {
                    ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
                ddlNam.Items.Add(new ListItem("--chọn năm--", ""));
                for (int i = 1; i <= 12; i++)
                {
                    ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }
        protected void btDangKy(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += $"<li> Ho ten khach hang: {txtTenDN.Text}</li>";
            kq += $"<li> Ten dang nhap: {txtTenDN.Text}</li>";
            kq += $"<li> Mat khau: {txtMatKhau.Text}</li>";
            kq += $"<li> Nhap lai mat khau: {txtMKNL.Text}</li>";
            kq += $"<li> Ngay sinh: {ddlNgay.SelectedValue}/{ddlThang.SelectedValue}/{ddlNam.SelectedValue}</li>";
            kq += $"<li> Email: {txtEmail.Text}</li>";

            kq += "</ul>";

            lblKetQua.Text = kq;
        }
    }
}