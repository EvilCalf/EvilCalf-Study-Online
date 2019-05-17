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

public partial class jiaoshixinxi_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
   
        if (!IsPostBack)
        {
			 xingbie.Items.Add("男"); 
			 xingbie.Items.Add("女");
           
            string sql;
      
            sql = "select * from jiaoshixinxi where id=" + Request.QueryString["id"].ToString().Trim();
            getdata(sql);

        }
        if (Session["path"] != null)
        {
            zhaopian.Text = Session["path"].ToString();
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
                zhigonghao.Text = result.Tables[0].Rows[0]["zhigonghao"].ToString().Trim();
                xingming.Text = result.Tables[0].Rows[0]["xingming"].ToString().Trim();
                xingbie.Text = result.Tables[0].Rows[0]["xingbie"].ToString().Trim();
                zhicheng.Text = result.Tables[0].Rows[0]["zhicheng"].ToString().Trim();
                chushengriqi.Text = result.Tables[0].Rows[0]["chushengriqi"].ToString().Trim();
                suoxuezhuanye.Text = result.Tables[0].Rows[0]["suoxuezhuanye"].ToString().Trim();
                xiancongshizhuanye.Text = result.Tables[0].Rows[0]["xiancongshizhuanye"].ToString().Trim();
                xueli.Text = result.Tables[0].Rows[0]["xueli"].ToString().Trim();
                xuewei.Text = result.Tables[0].Rows[0]["xuewei"].ToString().Trim();
                gongzuoshijian.Text = result.Tables[0].Rows[0]["gongzuoshijian"].ToString().Trim();
  
                beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();
                zhaopian.Text = result.Tables[0].Rows[0]["zhaopian"].ToString().Trim();
                mima.Text = result.Tables[0].Rows[0]["mima"].ToString().Trim();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;

        sql = "update jiaoshixinxi set zhigonghao='" + zhigonghao.Text.ToString().Trim()
            + "',xingming='" + xingming.Text.ToString().Trim() 
            + "',xingbie='" + xingbie.Text.ToString().Trim() 
            + "',zhicheng='" + zhicheng.Text.ToString().Trim()
            + "',chushengriqi='" + chushengriqi.Text.ToString().Trim() 
            + "',suoxuezhuanye='" + suoxuezhuanye.Text.ToString().Trim() 
            + "',xiancongshizhuanye='" + xiancongshizhuanye.Text.ToString().Trim() 
            + "',xueli='" + xueli.Text.ToString().Trim() 
            + "',xuewei='" + xuewei.Text.ToString().Trim()
            + "',gongzuoshijian='" + gongzuoshijian.Text.ToString().Trim()
              + "',zhaopian='" + zhaopian.Text.ToString().Trim() 
            + "',beizhu='" + beizhu.Text.ToString().Trim() 
            + "',mima='" + mima.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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

