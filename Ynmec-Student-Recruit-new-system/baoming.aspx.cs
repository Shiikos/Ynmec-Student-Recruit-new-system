using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class baoming : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string xb = "";
        string bj = "";
        string dy = "";
        string de = "";
        SqlConnection con = new SqlConnection("server=bds281043298.my3w.com;uid=bds281043298;pwd=20358209;database=bds281043298_db");
        SqlCommand cmd = new SqlCommand("select * from 报名表 where 学号='" + userNum.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count != 0)
        {
            Response.Write("<script language='javascript'>alert('此用户已报名！')</script>");
        }
        else
        {
            if (RadioButton1.Checked == true)
            {
                xb = RadioButton1.Text.ToString();
            }
            else if (RadioButton2.Checked == true)
            {
                xb = RadioButton2.Text.ToString();
            }
            bj = userClass.SelectedValue.ToString();
            dy = RadioButtonList1.SelectedValue.ToString();
            de = RadioButtonList2.SelectedValue.ToString();


            SqlCommand cmd1 = new SqlCommand();
            con.Open();
            cmd1.Connection = con;
            cmd1.CommandText = "insert into 报名表 values(@姓名,@性别,@班级,@学号,@手机号码,@第一志愿,@第二志愿)";
            cmd1.Parameters.Add("@姓名", SqlDbType.NChar).Value = userName.Text.ToString();
            cmd1.Parameters.Add("@性别", SqlDbType.NChar).Value = xb.ToString();
            cmd1.Parameters.Add("@班级", SqlDbType.VarChar).Value = bj.ToString();
            cmd1.Parameters.Add("@学号", SqlDbType.VarChar).Value = userNum.Text.ToString();
            cmd1.Parameters.Add("@手机号码", SqlDbType.VarChar).Value = userPhone.Text.ToString();
            cmd1.Parameters.Add("@第一志愿", SqlDbType.VarChar).Value = dy.ToString();
            cmd1.Parameters.Add("@第二志愿", SqlDbType.VarChar).Value = de.ToString();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language='javascript'>alert('报名成功！')</script>");
        }
    }
}