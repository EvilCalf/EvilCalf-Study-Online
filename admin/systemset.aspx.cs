using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class systemset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {

            string sql;
            string sql2;
            sql = "select * from [systemset] where id =1";
            
            getdata(sql);
            sql2 = "select * from [IP]";
            getdata2(sql2);
        }
    }


    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new common().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                glch.Text = result.Tables[0].Rows[0]["glch"].ToString().Trim();

                
            }
        }
    }
    private void getdata2(string sql)
    {
        DataSet result = new DataSet();
        result = new common().hsggetdata(sql);
        if (result != null)
        {

            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count + "条";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "暂无任何数据";
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
    
        sql = "update systemset set glch='" + glch .Text.Trim() + "' where id=1";
      
        int result;
        result = new common().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('设置成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库的连?);</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql;
        string sql2;
        sql = "insert into [IP](ip) values('" + txtIP.Text.ToString().Trim()  + "') ";
        int result;
        result = new common().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('添加成功');</script>");
            Response.Redirect("systemset.aspx");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }
}

