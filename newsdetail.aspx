<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsdetail.aspx.cs" Inherits="newsdetail" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc2" %>
<%@ Register Src="qtfoot.ascx" TagName="qtfoot" TagPrefix="uc3" %>
<%@ Register Src="qtfoot2.ascx" TagName="qtfoot2" TagPrefix="uc4" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>EvilCalf Study Online</title>
<meta name="keywords" content="[!--pagekey--]" />
<meta name="description" content="[!--pagedes--]" />
<link href="css/master.css" type="text/css" rel="stylesheet" />
<link href="css/base.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/SuperSlide.js?v2.1"></script>
<script type="text/javascript" src="js/jquery.jclock.js"></script>
</head>


<body>
<form id="form1" runat="server">
<!--------------------------------------------头部开始-------------------------------------------->
	<uc1:qttop ID="Qttop1" runat="server" />
<!--------------------------------------------头部结束-------------------------------------------->

<div class="index-main clearfix">

	<uc2:qtleft ID="Qtleft1" runat="server" />

<div class="right fr border">
	<div class="newsnav yh"><a href="">首页</a> > 新闻详情</div>
	<ul class="text-list">
   
   
                                                                    
<p>
                        <table align="center" border="0"  class="newsline"  bordercolor="#a5dfc6" cellpadding="0" cellspacing="0"
                            style="border-collapse: collapse" width="96%">
                            <tr>
                                  <td align="center" height="41" style="width: 646px">
                                      <font color="red"><strong>
                                          <%=ntitle %>
                                      </strong></font>&nbsp;</td>
                              </tr>
                              <tr>
                                  <td align="left" height="294" valign="top" style="width: 646px">
                                      <%=ncontent %>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td align="center" heigh="38" style="width: 646px; height: 17px">
                                      &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="javascript:history.back();">返回</asp:HyperLink></td>
                              </tr>
                        </table>
                    &nbsp;</p>
                           
   
   
   
   
   
   
   
   
    </ul>

	<!--<div class="page2 clearfix"><a href="" class="on">1</a><a href="">2</a><a href="">3</a><a href="">>></a></div>      -->
    
</div>

    
</div>


	<uc4:qtfoot2 ID="qtfoot2" runat="server" />


<script src="js/all.js" type="text/javascript"></script>
</form>
</body>
</html>