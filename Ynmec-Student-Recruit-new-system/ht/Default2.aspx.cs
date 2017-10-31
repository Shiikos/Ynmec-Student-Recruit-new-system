using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ht_Default2 : System.Web.UI.Page
{

    static bool mark=false;
    public void databind()
    {
        SqlConnection con = new SqlConnection("server=bds281043298.my3w.com;uid=bds281043298;pwd=20358209;database=bds281043298_db");
        SqlCommand cmd = new SqlCommand("select * from  报名表 ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
    public void databind1()
    {
        string a = DropDownList1.SelectedItem.Text.ToString();
        SqlConnection con = new SqlConnection("server=bds281043298.my3w.com;uid=bds281043298;pwd=20358209;database=bds281043298_db");
        SqlCommand cmd = new SqlCommand("select * from 报名表 where 第一志愿='" + a + "' or 第二志愿='" + a + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");

        }

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        if (mark == false)
        {
            databind();
        }
        else
        {
            databind1();
        }
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection con = new SqlConnection("server=bds281043298.my3w.com;uid=bds281043298;pwd=20358209;database=bds281043298_db");
        SqlCommand cmd1 = new SqlCommand("select * from  报名表 ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int xh = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        string xm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string xb = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string bj = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string dhhm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string dyzz = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string dezz = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        SqlCommand cmd = new SqlCommand("update  报名表  set 班级='" + bj + "', 手机号码+" +
            "='" + dhhm + "', 第一志愿='" + dyzz + "', 第二志愿='" + dezz + "'" + " where 学号=" + xh, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        if (mark == false)
        {
            databind();
        }
        else
        {
            databind1();
        }
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        if (mark == false)
        {
            databind();
        }
        else
        {
            databind1();
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        if (mark == false)
        {
            databind();
        }
        else
        {
            databind1();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int xh = Convert.ToInt32(GridView1.DataKeys[e.RowIndex][0]);
        SqlConnection con = new SqlConnection("server=bds281043298.my3w.com;uid=bds281043298;pwd=20358209;database=bds281043298_db");
        SqlCommand cmd1 = new SqlCommand("select * from  报名表", con);
        SqlCommand cmd = new SqlCommand("delete from 报名表 where 学号=" + xh, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        if (mark == false)
        {
            databind();
        }
        else
        {
            databind1();
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        databind1();
        mark = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        databind();
        mark = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.AllowPaging = false;
        if (mark == false)
        {
            databind();
        }
        else
        {
            databind1();
        }
        ExcelOut(this.GridView1);
    }

    public void ExcelOut(GridView gv)
    {
        if (gv.Rows.Count > 0)
        {
            Response.Clear();
            Response.ClearContent();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + DateTime.Now.ToString("_yyyyMMdd_HHmmss") + ".xls");
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.ContentType = "application/ms-excel";
            System.IO.StringWriter sw = new System.IO.StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            gv.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
        else
        {
            Response.Write("<script language='javascript'>alert('没有可导出的数据！')</script>");
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        //这个方法不能删除掉
    }
}