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

public partial class tiezi_add : System.Web.UI.Page
{
    public string ssss, lbtxt;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = "发表帖子";
        DataSet result;
        string sql;
        ssss = Session["nbk"].ToString().Trim();
        if (Session["username"] != null)
        {
            // xingming.Text = Session["userxm"].ToString().Trim();
            yonghuming.Text = Session["username"].ToString().Trim();

            string ip = Request.UserHostAddress.ToString().Trim();

            sql = "select count(*) as lie from [IP] where ip='" + ip + "'";
            result = new common().hsggetdata(sql);
            if (Convert.ToInt32(result.Tables[0].Rows[0]["lie"]) > 0)
            {
                Response.Write("<script>alert('对不起，您的IP被限制访问，请咨询管理员');history.back();</script>");
                Response.End();
            }

        }
        else
        {
            Response.Write("<script>alert('对不起，请先登陆');history.back();</script>");
            Response.End();
        }
    }

    //敏感词汇过滤方法
    public bool myFilter(string msg, string[] arry)
    {
        for (int i = 0; i < arry.Length; i++)
        {
            if (msg.Contains(arry[i].ToString()))
            {
                Response.Write("<script language=javascript>alert('对不起，该信息涉及敏感词汇，无法发表！');</script>");
                return false;
            }
        }
        return true;
    }


    private string getdata(string sql)
    {

        string strarr = "";
        DataSet result = new DataSet();
        result = new common().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                strarr = result.Tables[0].Rows[0]["glch"].ToString().Trim();
                return strarr;
            }
        }
        return strarr;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql2;
        string[] strGLCH;
        string strvalue; ;
        string sql;

        string nzhuangtai;
        nzhuangtai = "普通";
        if (RadioButton1.Checked)
        {
            nzhuangtai = "普通";
        }
        if (RadioButton2.Checked)
        {
            nzhuangtai = "加急";
        }
        if (RadioButton3.Checked)
        {
            nzhuangtai = "求助";
        }
        if (RadioButton4.Checked)
        {
            nzhuangtai = "推荐";
        }
        string ngender;
        ngender = "男";
        if (RadioButton5.Checked)
        {
            ngender = "男";
        }
        else
        {
            ngender = "女";
        }
        sql2 = "select glch from systemset where id=1";
        strvalue = getdata(sql2);
        strGLCH = strvalue.Split('|');

        if (myFilter(content.Text.ToString(), strGLCH) == true&& myFilter(zhuti.Text.ToString().Trim(), strGLCH) == true)
        {
            sql = "insert into tiezi(zhuangtai,zhuti,yonghuming,xingming,xingbie,youxiang,gerenwangzhan,neirong,bk) values('" + nzhuangtai + "','" + zhuti.Text.ToString().Trim() + "','" + yonghuming.Text.ToString().Trim() + "','" + xingming.Text.ToString().Trim() + "','" + ngender + "','" + youxiang.Text.ToString().Trim() + "','" + gerenwangzhan.Text.ToString().Trim() + "','" + content.Text.ToString()+ "','" + Session["nbk"].ToString().Trim() + "') ";
            int result;


            result = new common().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('添加成功');location.href='tiezilist.aspx?mc="+ssss+"';</script>");


            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误，请检查数据库的连?);</script>");
            }
        }
    }
}
