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

public partial class news_updt : System.Web.UI.Page
{
    public string lbtxt;
    protected void Page_Load(object sender, EventArgs e)
    {

       
   
        if (!IsPostBack)
        {
			// xingbie.Items.Add("��"); 
			// xingbie.Items.Add("Ů");
            string sql;
            sql = "select * from news where id=" + Request.QueryString["id"].ToString().Trim();
            getdata(sql);
        }
        if (Session["path"] != null)
        {
            shouyetupian.Text = Session["path"].ToString();
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
                title.Text = result.Tables[0].Rows[0]["title"].ToString().Trim();
                content.Text = result.Tables[0].Rows[0]["content"].ToString();
                leibie.Text = result.Tables[0].Rows[0]["leibie"].ToString().Trim();
                shouyetupian.Text = result.Tables[0].Rows[0]["shouyetupian"].ToString().Trim();
                dianjilv.Text = result.Tables[0].Rows[0]["dianjilv"].ToString().Trim();
                lbtxt = result.Tables[0].Rows[0]["leibie"].ToString().Trim();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;

        sql = "update news set title='" + title.Text.ToString().Trim() + "',content='" + content.Text.ToString() + "',leibie='" + leibie.Text.ToString().Trim() + "',shouyetupian='" + shouyetupian.Text.ToString().Trim() + "',dianjilv='" + dianjilv.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new common().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('�޸ĳɹ�');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('ϵͳ����');</script>");
        }
    }
}

