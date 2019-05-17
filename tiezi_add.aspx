<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tiezi_add.aspx.cs" Inherits="tiezi_add" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc2" %>
<%@ Register Src="qtfoot.ascx" TagName="qtfoot" TagPrefix="uc3" %>
<%@ Register Src="qtfoot2.ascx" TagName="qtfoot2" TagPrefix="uc4" %>
<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="dntb" %>
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
	<div class="newsnav yh"><a href="">首页</a> > 发表帖子</div>
	<ul class="text-list">
    	  <table cellspacing="0" bordercolorDark="#9cc7ef" cellpadding="4" width="100%" align="center" bordercolorLight="#145aa0" border="0"  class="newsline" >
				                                                <tr bgcolor="#c9e9ba">
					                                                <td colspan="2">
						                                                <div align="center">
                                                                            <a href="javascript:history.go(-1);" target="_parent"><img border="0" src="images/006.gif" alt=""/></a>
                                                                         </div>
					                                                </td>
				                                                </tr>
                                            				
			                                                    <tr>
			                                                        <td noWrap width='30' style='WIDTH: 164px'><font face='宋体'>状态:</font></td><td width='79%' align="left">
                                                                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="aa" Text="普通" />
                                                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="aa" Text="加急" />
                                                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="aa" Text="求助" />
                                                                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="aa" Text="推荐" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td noWrap width='30' style='WIDTH: 164px'>
                                                                    <font face='宋体'>主题:</font>
                                                                    </td>
                                                                    <td width='79%' align="left">
                                                                    <asp:TextBox ID='zhuti' runat='server' Width="310px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td noWrap width='30' style='WIDTH: 164px'>
                                                                     <font face='宋体'>用户名:</font>
                                                                    </td>
                                                                    <td width='79%' align="left">
                                                                        <asp:TextBox ID='yonghuming' runat='server'>
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td noWrap width='30' style='WIDTH: 164px'>
                                                                        <font face='宋体'>姓名:</font>
                                                                    </td>
                                                                    <td width='79%' align="left">
                                                                        <asp:TextBox ID='xingming' runat='server'>
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td noWrap width='30' style='WIDTH: 164px'>
                                                                         <font face='宋体'>性别:</font>
                                                                    </td>
                                                                    <td width='79%' align="left">
                                                                        <asp:RadioButton ID="RadioButton5" runat="server" Checked="True" GroupName="bb" Text="男" />
                                                                        <asp:RadioButton ID="RadioButton6" runat="server" GroupName="bb" Text="女" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                <td noWrap width='30' style='WIDTH: 164px'>
                                                                    <font face='宋体'>邮箱:</font>
                                                                </td>
                                                                <td width='79%' align="left">
                                                                    <asp:TextBox ID='youxiang' runat='server' Width="253px">
                                                                    </asp:TextBox>
                                                                </td>
                                                                </tr>
                                                                <tr>
                                                                    <td noWrap width='30' style='WIDTH: 164px'>
                                                                        <font face='宋体'>个人网站:</font>
                                                                    </td>
                                                                     <td width='79%' align="left">
                                                                        <asp:TextBox ID='gerenwangzhan' runat='server' Width="251px">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                <td noWrap width='30' style='WIDTH: 164px'>
                                                                    <font face='宋体'>内容:</font>
                                                                </td>
                                                                <td width='79%' align="mid">
                        <dntb:WebEditor ID='content' runat="server" Skin="skin/xp/" systemFolder="admin/system_dntb/" />
                                                                    </td>
                                                                </tr>
                                            				
				                                                <tr>
					                                                <td noWrap width="164" height="25" style="WIDTH: 164px">
						                                                <div align="right"><font face="宋体"></FONT>&nbsp;</div>
					                                                </td>
					                                                <td width="59%" height="25">&nbsp;
						                                                <asp:button id="Button1" runat="server" Text="添加" onclick="Button1_Click"></asp:button>
						                                                <font face="宋体">&nbsp;</font>&nbsp;
                                                                    </td>
				                                                </tr>
				                                                <tr>
					                                                <td colSpan="2">
						                                                <div align="center"></div>
					                                                </td>
				                                                </tr>
				                                                <tr bgColor="#c9e9ba">
					                                                <td colSpan="2">&nbsp;</td>
				                                                </tr>
			                                            </table>
                  
    </ul>


    
</div>

    
</div>


	<uc4:qtfoot2 ID="qtfoot2" runat="server" />


<script src="js/all.js" type="text/javascript"></script>
</form>
</body>
</html>