using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ChamCong
{
    public partial class DangNhap : Form
    {

        Form1 QLCN;
        string cnstr = "";
      //  string cnstr = @"Data Source=QUANGVINH-PC\SERVERCONNECT;Initial Catalog=EmployeeDB;Integrated Security=True";
        SqlConnection cn;
        SqlCommand cm;
        public DangNhap()
        {
            InitializeComponent();
        }

        private void DangNhap_Load(object sender, EventArgs e)
        {
            cnstr = ConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
            
        }

        private void btDangNhap_Click(object sender, EventArgs e)
        {
            try
            {
                cn = new SqlConnection(cnstr);
                cn.Open();

                string sqlDangNhap = "select count(*) from [QLCN].[dbo].[TaiKhoan] where TenTaiKhoan=@acc and MatKhau=@pass";
                cm = new SqlCommand(sqlDangNhap, cn);
                cm.Parameters.Add(new SqlParameter("@acc", txtTK.Text));
                cm.Parameters.Add(new SqlParameter("@pass", txtMK.Text));

                int x = (int)cm.ExecuteScalar();
                if (x == 1)
                {
                    //hien form ql khi dang nhap thanh cong
                    this.Hide();
                    QLCN = new Form1();
                    QLCN.Show();
                }
                else
                    lbEx.Text = "Acc or pass not corect ";
                txtMK.Text = "";
                txtTK.Text = "";
                txtTK.Focus();
            }
            catch (SqlException ex)
            {

                MessageBox.Show(ex.Message);
            }
        }

        private void chkPass_CheckedChanged(object sender, EventArgs e)
        {

            if (chkPass.Checked)
            {
                txtMK.UseSystemPasswordChar = false;
            }
            else txtMK.UseSystemPasswordChar = true;
        }
    }
}
