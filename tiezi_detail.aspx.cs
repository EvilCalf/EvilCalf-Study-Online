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

public partial class tiezi_detail : System.Web.UI.Page
{
    public string zt, xm, xb, yx, wz, nr, lbtxt;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = "帖子详细";
        if (Session["username"] != null)
        {

        }
        else
        {
            Response.Write("<script>alert('对不起，请先登陆');history.back();</script>");
            Response.End();
        }
        if (!IsPostBack)
        {
            string sql;
            sql = "select * from tiezi where id=" + Request.QueryString["id"].ToString().Trim();
            getdata(sql);
            sql = "select * from tiezi where fid=" + Request.QueryString["id"].ToString().Trim();
            getdata2(sql);
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

            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
            }
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


    private string getdata3(string sql)
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



    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new common().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                zt = result.Tables[0].Rows[0]["zhuti"].ToString().Trim();
                xm = result.Tables[0].Rows[0]["xingming"].ToString().Trim();
                xb = result.Tables[0].Rows[0]["xingbie"].ToString().Trim();
                yx = result.Tables[0].Rows[0]["youxiang"].ToString().Trim();
                wz = result.Tables[0].Rows[0]["gerenwangzhan"].ToString().Trim();
                nr = result.Tables[0].Rows[0]["neirong"].ToString().Trim();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql2;
        string[] strGLCH;
        string strvalue; ;
        string sql;
        sql = "insert into tiezi(zhuti,yonghuming,fid) values('" + content.Text.ToString()+ "','" + Session["username"].ToString().Trim() + "'," + Request.QueryString["id"].ToString().Trim() + ")";
        int result;

        sql2 = "select glch from systemset where id=1";
        strvalue = getdata3(sql2);
        strGLCH = strvalue.Split('|');
        if (myFilter(content.Text.ToString(), strGLCH) == true)
        {
            result = new common().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('回复成功');location.href='tiezi_detail.aspx?id=" + Request.QueryString["id"].ToString().Trim() + "';</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误，请检查数据库的连?);</script>");
            }
        }
    }
}
