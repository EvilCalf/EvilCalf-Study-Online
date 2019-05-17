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

public partial class qtfoot : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql;
        sql = "select top 8 * from youqinglianjie order by id desc";
        getfriendlink(sql);
    }

    private void getfriendlink(string sql)
    {
        DataSet result = new DataSet();
        result = new common().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                Repeateryqlj.DataSource = result.Tables[0];
                Repeateryqlj.DataBind();
            }
            else
            {
                Repeateryqlj.DataSource = null;
                Repeateryqlj.DataBind();
            }
        }
    }
}
