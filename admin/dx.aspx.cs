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

public partial class dx : System.Web.UI.Page
{
    public string lb, lbtxt, sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        lb = Request.QueryString["lb"].ToString().Trim();
        switch (lb)
        {
            case "1":
                lbtxt = "系统简介";
                TextBox1.Visible = false;
                Label1.Visible = false;
                break;
            case "2":
                lbtxt = "系统公告";
                break;
         
        }
        if (!IsPostBack)
        {
            sql = "select content from dx where leibie='" + lbtxt + "'";
            DataSet result = new DataSet();
            result = new common().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    WebEditor1.Text = result.Tables[0].Rows[0][0].ToString();
                }
                

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (lb == "1")
        {
            sql = "update dx set content='" + WebEditor1.Text + "' where leibie='" + lbtxt + "'";

            int result;
            result = new common().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('编辑成功');</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误');</script>");
            }
        }
        if (lb == "2")
        {
            sql = "insert into gonggao(neirong,biaoti) values('" + WebEditor1.Text.ToString().Trim() + "','" + TextBox1.Text.ToString().Trim() + "')";
            int result;
            result = new common().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('编辑成功');</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误');</script>");
            }
        }

    }

}
