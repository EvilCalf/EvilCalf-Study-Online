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

public partial class zuoyeshangjiao_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
   
        if (!IsPostBack)
        {
			// xingbie.Items.Add("male"); 
			// xingbie.Items.Add("female");
            string sql;
            sql = "select * from zuoyeshangjiao where id=" + Request.QueryString["id"].ToString().Trim() ;
            getdata(sql);
        }
        if (Session["path"] != null)
        {
            neirong.Text = Session["path"].ToString();
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
                bianhao.Text = result.Tables[0].Rows[0]["bianhao"].ToString().Trim();zuoyemingcheng.Text = result.Tables[0].Rows[0]["zuoyemingcheng"].ToString().Trim();neirong.Text = result.Tables[0].Rows[0]["neirong"].ToString().Trim();shangjiaoren.Text = result.Tables[0].Rows[0]["shangjiaoren"].ToString().Trim();chengji.Text = result.Tables[0].Rows[0]["chengji"].ToString().Trim();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        
        sql = "update zuoyeshangjiao set bianhao='" + bianhao.Text.ToString().Trim() + "',zuoyemingcheng='" + zuoyemingcheng.Text.ToString().Trim() + "',neirong='" + neirong.Text.ToString().Trim() + "',shangjiaoren='" + shangjiaoren.Text.ToString().Trim() + "',chengji='" + chengji.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new common().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
}

