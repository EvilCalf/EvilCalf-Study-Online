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

public partial class _Default : System.Web.UI.Page
{
    public string sql, ncontent;
    public string npics, nlinks, ntexts,ngg;
      protected void Page_Load(object sender, EventArgs e)
      {
        if (Session["username"] != null && Session["userip"] != null)
          {
              Panel2.Visible = true;
              Panel1.Visible = false;
          }
          else
          {
              Panel1.Visible = true;
              Panel2.Visible = false;
          }
        if (!IsPostBack)
        {
            //幻灯图片
            sql = "select top 5 id,title,shouyetupian from news where shouyetupian<>'' order by id desc";
            getsyt(sql);

            //幻灯新闻标题
            sql = "select top 5 id,title,shouyetupian from news where shouyetupian<>'' order by id desc";
            getsybt(sql);


            sql = "select top 6 * from news where leibie='站内新闻' order by id desc";
            getdata(sql);

            sql = "select top 6 * from news where leibie='用户须知' order by id desc";
            getdata2(sql);

            sql = "select top 5 * from tupian  where tupian<>'' order by id desc";
            getdata4(sql);

            sql = "select content from dx where leibie='系统简介'";
            getdatextjj(sql);


        }
     }



  private void getdatextjj(string sql)
    {
        DataSet result = new DataSet();
        result = new common().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                ncontent = result.Tables[0].Rows[0][0].ToString().Trim();
            }
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
                 Repeater1.DataSource = result.Tables[0];
                 Repeater1.DataBind();
             }
             else
             {
                 Repeater1.DataSource = null;
                 Repeater1.DataBind();
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
             Repeaterxw2.DataSource = result.Tables[0];
             Repeaterxw2.DataBind();
         }
         else
         {
             Repeaterxw2.DataSource = null;
             Repeaterxw2.DataBind();
         }
     }
 }

     private void getdata4(string sql)
     {
         DataSet result = new DataSet();
         result = new common().hsggetdata(sql);
         if (result != null)
         {
             if (result.Tables[0].Rows.Count > 0)
             {
                 Repeatertp.DataSource = result.Tables[0];
                 Repeatertp.DataBind();
             }
             else
             {
                 Repeatertp.DataSource = null;
                 Repeatertp.DataBind();
             }
         }
     }



     private void getsyt(string sql)
     {

        
          DataSet result = new DataSet();
         result = new common().hsggetdata(sql);
         if (result != null)
         {
             if (result.Tables[0].Rows.Count > 0)
             {
                 Repeaterxwtp.DataSource = result.Tables[0];
                 Repeaterxwtp.DataBind();
             }
             else
             {
                 Repeaterxwtp.DataSource = null;
                 Repeaterxwtp.DataBind();
             }
         }

         
     }

    private void getsybt(string sql)
    {


        DataSet result = new DataSet();
        result = new common().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                Repeaterxwbt.DataSource = result.Tables[0];
                Repeaterxwbt.DataBind();
            }
            else
            {
                Repeaterxwbt.DataSource = null;
                Repeaterxwbt.DataBind();
            }
        }


    }

    //新闻标题截取
     public string CutStr(object str)
    {
        string strTmp = str.ToString();
        //     截取长度20 
        if (strTmp.Length > 18)
        {
            return strTmp.Substring(0, 16) + "... ";
        }
        else
        {
            return strTmp;
        }
    }
    public string CutStr2(object str)
    {
        string strTmp = str.ToString();
        //     截取长度20 
        if (strTmp.Length > 14)
        {
            return strTmp.Substring(0, 12) + "... ";
        }
        else
        {
            return strTmp;
        }
    }
    //短日期格式
      public string CutDate(object dt)
     {
         DateTime dtTmp = (DateTime)dt;

         String strTmp = dtTmp.ToShortDateString().ToString();//
         return strTmp;
     
     
     }

   protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["code"].ToString().Trim().Equals(yzm.Text.Trim()))
        {

        }
        else
        {
            Response.Write("<script>javascript:alert('验证码有误');location.href='Default.aspx';</script>");
            Response.End();
        }
        string sql;

        sql = "select * from yonghuzhuce where yonghuming='" + TextBox1.Text.ToString().Trim() + "' and mima='" + TextBox2.Text.ToString().Trim() + "' and issh='是' ";

        DataSet result = new DataSet();
        result = new common().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                Session["username"] = TextBox1.Text.ToString().Trim();
                Session["cx"] = "注册用户";

                Session["userip"] = Page.Request.UserHostAddress;
                Response.Write("<script>javascript:alert('登录成功!');location.href='default.aspx';</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('登陆失败，用户名或密码错误，或您的帐号未经审核！');location.href='default.aspx';</script>");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         Response.Redirect("admin/logout.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin/main.aspx");
    }
}
