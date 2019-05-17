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

public partial class userreg : System.Web.UI.Page
{
    public string lbtxt;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = "用户注册";
        if (!IsPostBack)
        {
            xingbie.Items.Add("男");
            xingbie.Items.Add("女");
            
        }
        if(Session["path"]!=null)
        {
            touxiang.Text = Session["path"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql;
        sql = "select * from yonghuzhuce where yonghuming='" + yonghuming.Text.ToString().Trim()+"'";
        DataSet result2;
        int result;
        result2 = new common().hsggetdata(sql);
        if (result2 != null)
        {
            sql = "insert into yonghuzhuce(yonghuming,mima,xingming,dianhua,youxiang,touxiang,shenfenzheng,dizhi,xingbie,beizhu) values('" + yonghuming.Text.ToString().Trim() + "','" + mima.Text.ToString().Trim() + "','" + xingming.Text.ToString().Trim() + "','" + dianhua.Text.ToString().Trim() + "','" + youxiang.Text.ToString().Trim() + "','" + touxiang.Text.ToString().Trim() + "','" + txtshenfenzheng.Text.ToString().Trim() + "','" + dizhi.Text.ToString().Trim() + "','" + xingbie.Text.ToString().Trim() + "','" + beizhu.Text.ToString().Trim() + "') ";

            result = new common().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('注册成功，请待管理员审核后方可登陆！');location.href='default.aspx';</script>");
                Response.End();
            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
            }
        }
        else
        {
            Response.Write("<script>javascript:alert('用户名已经被注册！');</script>");
        }
        
    }

    protected void refresh_Click(object sender, EventArgs e)
    {
        if (Session["path"] != null)
        {
            touxiang.Text = Session["path"].ToString();
        }
    }
}
