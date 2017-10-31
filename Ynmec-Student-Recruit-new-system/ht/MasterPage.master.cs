using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ht_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
     

        if (Session["username"] == null)
        {
            LinkButton1.Text = "登录";
            LinkButton2.Text = "前台";
        }
        else
        {
            LinkButton1.Text = "欢迎您：" + Session["username"].ToString();
            LinkButton2.Text = "退出";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "登录")
        {
            Response.Redirect("dl.aspx");
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        if (LinkButton2.Text == "前台")
        {
            Response.Redirect("../Default.aspx");
        }
        else
        {
            Session.Abandon();
            LinkButton1.Text = "登录";
            LinkButton2.Text = "前台";
        }
    }


    
}
