<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lyb.aspx.cs" Inherits="lyb" %>
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
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>


<body>
<form id="form1" runat="server">
<!--------------------------------------------头部开始-------------------------------------------->
	<uc1:qttop ID="Qttop1" runat="server" />
<!--------------------------------------------头部结束-------------------------------------------->

<div class="index-main clearfix">

	<uc2:qtleft ID="Qtleft1" runat="server" />

<div class="right fr border">
	<div class="newsnav yh"><a href="">首页</a> > 留言板</div>
	<ul class="text-list">

                              <p align="center">
                             
                                        <div align="center">
                                              <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                  <!--DWLayoutTable-->
                                                  <tr>
                                                      <td rowspan="2" style="width: 57%" valign="top">
                                                          <table bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="1" class="auto-style1">
                                                              <!--DWLayoutTable-->
                                                              <tr>
                                                                  <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                      你的姓名:</td>
                                                                  <td align="left" bgcolor="#ffffff" colspan="2" valign="top">
                                                                      <asp:TextBox ID="username" runat="server" Style="border-right: #339900 1px solid; border-top: #339900 1px solid; font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid"></asp:TextBox>&nbsp;</td>
                                                                  <td bgcolor="#ffffff" style="width: 57px" valign="top">
                                                                      &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                                                                          ErrorMessage="*必填"></asp:RequiredFieldValidator></td>
                                                              </tr>
                                                              <tr style="color: #000000">
                                                                  <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                      性 别:</td>
                                                                  <td align="left" bgcolor="#ffffff" style="width: 110px" valign="middle">
                                                                      <asp:RadioButton ID="Radboy" runat="server" Checked="True" GroupName="sex" Style="border-right: #009900 1px solid;
                                                                          border-top: #009900 1px solid; font: menu; border-left: #009900 1px solid; border-bottom: #009900 1px solid"
                                                                          Text="男" />&nbsp;
                                                                      <asp:RadioButton ID="Radgril" runat="server" GroupName="sex" Style="border-right: #009900 1px solid; border-top: #009900 1px solid; font: icon; border-left: #009900 1px solid; border-bottom: #009900 1px solid" Text="女" /></td>
                                                                  <td bgcolor="#ffffff" colspan="2" style="color: #000000; font-family: Times New Roman" valign="top">
                                                                      <!--DWLayoutEmptyCell-->
                                                                      &nbsp;</td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman">
                                                                  <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                      电子邮箱:</td>
                                                                  <td align="left" bgcolor="#ffffff" colspan="2" valign="middle">
                                                                      <asp:TextBox ID="email" runat="server" Style="border-right: #339900 1px solid; border-top: #339900 1px solid;font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid"></asp:TextBox>&nbsp;</td>
                                                                  <td bgcolor="#ffffff" style="width: 57px" valign="top">
                                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="格式不对" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>&nbsp;</td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman">
                                                                  <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                      个人主页:
                                                                   </td>
                                                                  <td align="left" bgcolor="#ffffff" colspan="2" valign="top">
                                                                      <asp:TextBox ID="homepage" runat="server" Style="border-right: #339900 1px solid; border-top: #339900 1px solid; font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid"></asp:TextBox>&nbsp;</td>
                                                                  <td bgcolor="#ffffff" style="width: 57px" valign="top">
                                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="homepage"  ErrorMessage="格式不对" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator>&nbsp;</td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman">
                                                                  <td align="center" bgcolor="#ffffff" height="20" style="width: 56px" valign="middle">
                                                                      QQ号码:
                                                                  </td>
                                                                  <td align="left" bgcolor="#ffffff" style="width: 110px" valign="top">
                                                                      <asp:TextBox ID="qq" runat="server" Style="border-right: #339900 1px solid; border-top: #339900 1px solid; font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid" Width="102px">
                                                                        </asp:TextBox>
                                                                      </td>
                                                                  <td bgcolor="#ffffff" colspan="2" valign="top">
                                                                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="qq" ErrorMessage="格式不对" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>&nbsp;</td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman">
                                                                  <td bgcolor="#ffffff" height="27" style="width: 56px" valign="top">
                                                                      <!--DWLayoutEmptyCell-->
                                                                      <span>&nbsp;</span></td>
                                                                  <td align="center" bgcolor="#ffffff" style="width: 110px; font-family: Times New Roman"  valign="middle">
                                                                      &nbsp;<asp:Button ID="addly" runat="server" OnClick="addly_Click" Style="border-right: #009900 2px solid;border-top: #009900 2px solid; font: menu; border-left: #009900 2px solid; border-bottom: #009900 2px solid; background-color: #99cc99" Text="添加留言" Width="77px" /></td>
                                                                  <td align="left" bgcolor="#ffffff" colspan="2" valign="middle">
                                                                      &nbsp;<asp:CheckBox ID="ishde" runat="server" Text="悄悄话" Visible="false" /></td>
                                                              </tr>
                                                              <tr style="font-family: Times New Roman">
                                                                  
                                                              </tr>
                                                          </table>
                                                      </td>
                                                      <td style="width: 467px; font-family: Times New Roman; height: 101px" valign="top">
                                                          <table border="0" cellpadding="0" cellspacing="0" width="96%">
                                                              <!--DWLayoutTable-->
                                                              <tr>
                                                                  <td align="left" style="width: 100%; height: 97px" valign="top">
                                                                      <span>&nbsp;</span><asp:TextBox ID="lybody" runat="server" Height="91px" MaxLength="500" Style="border-right: #339900 1px solid; border-top: #339900 1px solid; font: menu; border-left: #339900 1px solid; border-bottom: #339900 1px solid" TextMode="MultiLine" Width="95%"></asp:TextBox></td>
                                                              </tr>
                                                          </table>
                                                      </td>
                                                  </tr>
                                                  <tr style="font-family: Times New Roman">
                                                      <td height="27" style="width: 467px" valign="top">
                                                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                              <!--DWLayoutTable-->
                                                              <tr>
                                                                  <td height="26" width="457">
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lybody" ErrorMessage="内容不能为空"></asp:RequiredFieldValidator>
                                                                      &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 留 言 内 容<asp:Label ID="Label1" runat="server" Width="131px"></asp:Label></td>
                                                              </tr>
                                                          </table>
                                                      </td>
                                                  </tr>
                                              </table>
                                          </div>
                                          <div align="center">
                                              <table border="0" cellpadding="0" cellspacing="0" style="width: 520px; font-family: Times New Roman">
                                                  <!--DWLayoutTable-->
                                                  <tr>
                                                      <td align="center" height="18" style="width: 705px" valign="middle">
                                                          留 言 列 表 &nbsp; &nbsp;
                                                          <asp:HyperLink ID="admin_go" runat="server" NavigateUrl="admin/login.aspx">管理登陆</asp:HyperLink>
                                                      </td>
                                                  </tr>
                                              </table>
                                          </div>
                                          <div align="center">
                                              <asp:Repeater ID="rpt1" runat="server">
                                                  <ItemTemplate>
                                                      <table bgcolor="#009900" border="0" cellpadding="0" cellspacing="1" class="tb" width="100%">
                                                          <!--DWLayoutTable-->
                                                          <tr>
                                                              <td bgcolor="#FFFFFF" rowspan="3" valign="top" width="11">
                                                                  <!--DWLayoutEmptyCell-->
                                                                  &nbsp;
                                                              </td>
                                                              <td align="center" bgcolor="#FFFFFF" rowspan="2" valign="middle" width="85">
                                                                  <%#"<img width='70'height='70' src=admin/img/" + Eval("Face") + ".gif border=0>"%>
                                                              </td>
                                                              <td align="left" bgcolor="#FFFFFF" height="20" valign="middle" width="528">
                                                                  &nbsp; &nbsp; 留言于:<%#Eval("adddate")%></td>
                                                              <td align="center" bgcolor="#FFFFFF" valign="middle" width="136">
                                                                  &nbsp; 回复
                                                              </td>
                                                              <td bgcolor="#FFFFFF" rowspan="3" style="width: 10px" valign="top" width="12">
                                                                  <!--DWLayoutEmptyCell-->
                                                                  &nbsp;
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" bgcolor="#FFFFFF" height="78" valign="top">
                                                                  &nbsp;&nbsp;<%# showbody(Convert.ToBoolean(Eval("IsHidden")),Eval("body").ToString())%><%# showrely((bool)Eval("isrely"),Eval("rebody").ToString()) %></td>
                                                              <td align="left" bgcolor="#FFFFFF" height="78" valign="top">
                                                                  <%#Eval("rebody")%>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="center" bgcolor="#FFFFFF" style="height: 25px" valign="middle">
                                                                  姓名:<%#Eval("username")%></td>
                                                              <td align="left" bgcolor="#FFFFFF" colspan="2" style="height: 25px" valign="middle">
                                                                  &nbsp; &nbsp; 邮 箱:<%#Eval("email")%>&nbsp; &nbsp; QQ:<%#Eval("qq")%>&nbsp; &nbsp;
                                                                  主页:<%#Eval("homepage")%></td>
                                                          </tr>
                                                      </table>
                                                      <br>
                                                  </ItemTemplate>
                                              </asp:Repeater>
                                              <table id="Table1" border="0" cellpadding="1" cellspacing="1" style="font-family: Times New Roman" width="100%">
                                                  <tr>
                                                      <td align="center" style="width: 775px; height: 18px">
                                                          共 <font face="宋体"><b>
                                                              <asp:Label ID="lbTotalPage" runat="server">1</asp:Label></b></font> 页 &nbsp;&nbsp;
                                                          <asp:HyperLink ID="hlkFirstPage" runat="server">首页</asp:HyperLink>
                                                          &nbsp; | &nbsp;
                                                          <asp:HyperLink ID="hlkPrevPage" runat="server">上一页</asp:HyperLink>
                                                          &nbsp; | &nbsp;
                                                          <asp:HyperLink ID="hlkNextPage" runat="server">下一页</asp:HyperLink>
                                                          &nbsp; | &nbsp;
                                                          <asp:HyperLink ID="hlkLastPage" runat="server">末页</asp:HyperLink>
                                                          &nbsp; | &nbsp; 第 <font face="宋体"><b>
                                                              <asp:Label ID="lbCurrentPage" runat="server">1</asp:Label></b></font> 页
                                                      </td>
                                                  </tr>
                                              </table>
                                          </div>
                    
                             
                             
                             
                             </p>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    </ul>

	<!--<div class="page2 clearfix"><a href="" class="on">1</a><a href="">2</a><a href="">3</a><a href="">>></a></div>      -->
    
</div>

    
</div>


	<uc4:qtfoot2 ID="qtfoot2" runat="server" />


<script src="js/all.js" type="text/javascript"></script>
</form>
</body>
</html>