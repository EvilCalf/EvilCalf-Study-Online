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

public partial class jiaoshixinxi_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
        {
			 xingbie.Items.Add("男"); 
			 xingbie.Items.Add("女");

        }
        if (Session["path"] != null)
        {
            zhaopian .Text = Session["path"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql="insert into jiaoshixinxi(zhigonghao,xingming,xingbie,zhicheng,chushengriqi,suoxuezhuanye,xiancongshizhuanye,xueli,xuewei,gongzuoshijian,zhaopian,beizhu,mima) values('"
            +zhigonghao.Text.ToString().Trim()+"','"
            +xingming.Text.ToString().Trim()+"','"
            +xingbie.Text.ToString().Trim()+"','"
            +zhicheng.Text.ToString().Trim()+"','"
            +chushengriqi.Text.ToString().Trim()+"','"
            +suoxuezhuanye.Text.ToString().Trim()+"','"
            +xiancongshizhuanye.Text.ToString().Trim()+"','"
            +xueli.Text.ToString().Trim()+"','"
            +xuewei.Text.ToString().Trim()+"','"
            +gongzuoshijian.Text.ToString().Trim()+"','"
                    + zhaopian.Text.ToString().Trim() + "','"
            +beizhu.Text.ToString().Trim()+"','"
            +mima.Text.ToString().Trim()+"') ";
        int result;
        result = new common().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('添加成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }

}

