﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class zuoyefabulist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>javascript:alert('对不起，请您先登陆！');history.back();</script>");
            Response.End();
        }
        if (!IsPostBack)
        {

            string sql;
            sql = "select * from zuoyefabu order by id desc";
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
        sql = "select * from zuoyefabu where 1=1";
        if (bianhao.Text.ToString().Trim() != "") { sql = sql + " and bianhao like '%" + bianhao.Text.ToString().Trim() + "%'"; } if (zuoyemingcheng.Text.ToString().Trim() != "") { sql = sql + " and zuoyemingcheng like '%" + zuoyemingcheng.Text.ToString().Trim() + "%'"; }
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from zuoyefabu order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }
    public string riqigeshi(object str)
    {
        string strTmp = str.ToString();
        DateTime dt = Convert.ToDateTime(strTmp);
        string ss = dt.ToShortDateString();
        return ss;

    }
}

