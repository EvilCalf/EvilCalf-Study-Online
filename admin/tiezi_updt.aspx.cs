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

public partial class tiezi_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
   
        if (!IsPostBack)
        {

            string sql;
            sql = "select * from tiezi where id=" + Request.QueryString["id"].ToString().Trim() ;
            getdata(sql);
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
                zhuangtai.Text = result.Tables[0].Rows[0]["zhuangtai"].ToString().Trim();zhuti.Text = result.Tables[0].Rows[0]["zhuti"].ToString().Trim();yonghuming.Text = result.Tables[0].Rows[0]["yonghuming"].ToString().Trim();xingming.Text = result.Tables[0].Rows[0]["xingming"].ToString().Trim();xingbie.Text = result.Tables[0].Rows[0]["xingbie"].ToString().Trim();youxiang.Text = result.Tables[0].Rows[0]["youxiang"].ToString().Trim();gerenwangzhan.Text = result.Tables[0].Rows[0]["gerenwangzhan"].ToString().Trim();neirong.Text = result.Tables[0].Rows[0]["neirong"].ToString().Trim();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        
        sql = "update tiezi set zhuangtai='" + zhuangtai.Text.ToString().Trim() + "',zhuti='" + zhuti.Text.ToString().Trim() + "',yonghuming='" + yonghuming.Text.ToString().Trim() + "',xingming='" + xingming.Text.ToString().Trim() + "',xingbie='" + xingbie.Text.ToString().Trim() + "',youxiang='" + youxiang.Text.ToString().Trim() + "',gerenwangzhan='" + gerenwangzhan.Text.ToString().Trim() + "',neirong='" + neirong.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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

