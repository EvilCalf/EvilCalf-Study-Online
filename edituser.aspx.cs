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

public partial class edituser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cx"].ToString().Trim() != "管理员")  //判断session值,如果是超级管理员,则此页可用,如果不是,则给出对话框提示.
        {
            Response.Write("<script>javascript:alert('对不起,您没有这个权限');history.back();</script>");
            Response.End();
        }
        if (!IsPostBack)
        {
            cx.Items.Add("超级管理员");
            cx.Items.Add("管理员");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "insert into allusers(username,pwd,cx) values('" + username.Text.ToString().Trim() + "','" + pwd1.Text.ToString().Trim() + "','"+cx.Text.ToString().Trim()+"')";
        new common().hsgexucute(sql); 
        Response.Write("<script>javascript:alert('添加成功');</script>"); 
    }
}
