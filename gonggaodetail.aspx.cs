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

public partial class gonggaodetail : System.Web.UI.Page
{
    public string biaoti, neirong, lbtxt;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = "公告详情";
        if (!IsPostBack)  
        {
            string sql;
            sql = "select * from gonggao where id=" + Request.QueryString["id"].ToString().Trim();
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
                biaoti = result.Tables[0].Rows[0]["biaoti"].ToString().Trim();
                neirong = result.Tables[0].Rows[0]["neirong"].ToString();
            }
        }
    }
}
