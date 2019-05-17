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

public partial class tiezilist : System.Web.UI.Page
{
    public string lbtxt;
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
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = "论坛列表";
        Session["nbk"] = Request.QueryString["mc"].ToString().Trim();
        if (!IsPostBack)
        {

            string sql;
            sql = "select * from tiezi where fid=0 and bk='" + Session["nbk"].ToString().Trim() + "' order by id desc";
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from tiezi where 1=1";
        if (zhuti.Text.ToString().Trim() != "")
        {
            sql = sql + " and zhuti like '%" + zhuti.Text.ToString().Trim() + "%'";
        }


        sql = sql + " order by id desc";

        getdata(sql);
    }
}
