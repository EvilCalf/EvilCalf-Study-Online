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

public partial class newsdetail : System.Web.UI.Page
{
    public string ntitle, ncontent, lbtxt;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = "详细";
        if (!IsPostBack)  
        {
            string sql;
            sql = "select * from news where id=" + Request.QueryString["id"].ToString().Trim();
            getdata(sql);
            sql ="update news set dianjilv = dianjilv + 1 where id=" + Request.QueryString["id"].ToString().Trim();
            new common().hsgexucute(sql);
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
                ntitle = result.Tables[0].Rows[0]["title"].ToString().Trim();
                ncontent = result.Tables[0].Rows[0]["content"].ToString();
            }
        }
    }
}
