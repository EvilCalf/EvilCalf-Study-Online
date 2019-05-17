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

public partial class qttop : System.Web.UI.UserControl
{
    public string  sql,ngg;
    protected void Page_Load(object sender, EventArgs e)
    {
      lb.Items.Add("站内新闻");
        if (!IsPostBack)
        {
          /*sql = "select content from dx where leibie='系统公告'";
            DataSet result = new DataSet();
            result = new common().hsggetdata(sql);
            ngg = result.Tables[0].Rows[0][0].ToString();*/
        }
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("news.aspx?lb=站内新闻&keyword=" + keyword.Text.ToString().Trim());
    }
}
