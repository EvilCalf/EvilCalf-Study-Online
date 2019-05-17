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

public partial class hsgupfile : System.Web.UI.Page
{
    public string fname;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (UploadFile.Value != null && UploadFile.Value != "")
        {
            hsgupload();
            Session["path"] = fname;
            Response.Write("<script>window.opener.location.href = window.opener.location.href; if (window.opener.progressWindow){ window.opener.progressWindow.close();}window.close();</script>");
            
        }


    }
    private void hsgupload()
    {
        if (UploadFile.Value != null)
        {
            string nam = UploadFile.PostedFile.FileName;
            //取得文件名(抱括路径)里最后一个"."的索引
            int i = nam.LastIndexOf(".");
            //取得文件扩展名
            string newext = nam.Substring(i);
            //这里我自动根据日期和文件大小不同为文件命名,确保文件名不重复
            Random rnd = new Random();
            int n = rnd.Next(1000, 9999);
            string newname = DateTime.Now.Year.ToString().Trim() + DateTime.Now.Month.ToString().Trim() + DateTime.Now.Day.ToString().Trim() + DateTime.Now.Hour.ToString().Trim() + DateTime.Now.Minute.ToString().Trim() + DateTime.Now.Second.ToString().Trim() + n.ToString().Trim();

           
            UploadFile.PostedFile.SaveAs(Server.MapPath("admin/uppic/" + newname + newext));

            //得到这个文件的相关属性:文件名,文件类型,文件大小

            fname = "admin/uppic/" + newname + newext;

        }
    }
}
