using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=bds281043298.my3w.com;uid=bds281043298;pwd=20358209;database=bds281043298_db");
        SqlCommand cmd = new SqlCommand("select * from admin where 工号='" + TextBox1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script language='javascript'>alert('用户名不正确！')</script>");
        }
        else if (ds.Tables[0].Rows[0]["密码"].ToString() != TextBox2.Text)
        {
            Response.Write("<script language='javascript'>alert('密码不正确！')</script>");
        }
    


        else
        {
            Session["username"] = TextBox1.Text;
            Response.Redirect("Default2.aspx");
        }
    }
}