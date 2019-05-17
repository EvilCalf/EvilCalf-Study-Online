<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userreg.aspx.cs" Inherits="userreg" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc2" %>
<%@ Register Src="qtfoot.ascx" TagName="qtfoot" TagPrefix="uc3" %>
<%@ Register Src="qtfoot2.ascx" TagName="qtfoot2" TagPrefix="uc4" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!doctype html>
<html>
<head>
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
            height: 494px;
        }
        .auto-style2 {
            width: 34px;
            height: 16px;
            margin-top: 0;
        }
    </style>
</head>

<script language="javascript">	
    function OpenScript(url, width, height)
    {
        var win = window.open(url, "SelectToSort", 'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes');
    }
</script>
<body>
<form id="form1" runat="server">
<!--------------------------------------------头部开始-------------------------------------------->
	<uc1:qttop ID="Qttop1" runat="server" />
<!--------------------------------------------头部结束-------------------------------------------->

<div class="index-main clearfix">

	<uc2:qtleft ID="Qtleft1" runat="server" />

<div class="right fr border">
	<div class="newsnav yh"><a href="">首页</a> > 用户注册</div>
	<ul class="text-list">
        <table align="center" border="0"  class="auto-style1"  bordercolor="#a5dfc6" cellpadding="0" cellspacing="0"
            style="border-collapse: collapse; " width="96%">
            <tr>
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体">头像:</font></td>
                <td align="left" width="79%">
                        <asp:TextBox ID="touxiang" runat="server" Height="18px" Width="123px" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                     *<a href="javaScript:OpenScript('hsgupfile.aspx?Result=touxiang',500,30)"><img align="absMiddle" border="0" src="images/Upload.gif" class="auto-style2" /></a></td>
            </tr>
            <tr>
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体">用户名:</font></td>
                <td align="left" width="79%">
                     <a href="javaScript:OpenScript('hsgupfile.aspx?Result=touxiang',500,30)">
                    <asp:TextBox ID="yonghuming" runat="server"></asp:TextBox>&nbsp;</a><asp:RequiredFieldValidator ID="RequiredFieldValidatoryonghuming0" runat="server" ControlToValidate="yonghuming"
                                            ErrorMessage="必填"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr style="color: #000000; font-family: 宋体">
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体"><span>密码</span>:</font></td>
                <td align="left" style="font-family: Times New Roman" width="79%">
                    <asp:TextBox ID="mima" runat="server" TextMode="Password" Width="147px"></asp:TextBox>*<asp:RequiredFieldValidator
                                            ID="RequiredFieldValidatormima" runat="server" ControlToValidate="mima" ErrorMessage="必填"></asp:RequiredFieldValidator></td>

            </tr>
            <tr style="color: #000000; font-family: 宋体">
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体"><span>确认密码</span>:</font></td>
                <td align="left" style="font-family: Times New Roman" width="79%">
                    <asp:TextBox ID="querenmima" runat="server" TextMode="Password" Width="147px"></asp:TextBox>*<asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="querenmima" ErrorMessage="必填" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="mima" ControlToValidate="querenmima" Display="Dynamic" ErrorMessage="密码不一致"></asp:CompareValidator>
                </td>

            </tr>
            <tr style="color: #000000; font-family: 宋体">
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体"><span>姓名:</span></font></td>
                <td align="left" style="font-family: Times New Roman" width="79%">
                    <asp:TextBox ID="xingming" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator
                        ID="RequiredFieldValidatorxingming" runat="server" ControlToValidate="xingming"
                        ErrorMessage="必填"></asp:RequiredFieldValidator></td>
            </tr>
            <tr style="color: #000000; font-family: 宋体">
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体">电话:</font></td>
                <td align="left" width="79%">
                    <asp:TextBox ID="dianhua" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator
                        ID="RequiredFieldValidatordianhua" runat="server" ControlToValidate="dianhua"
                        ErrorMessage="必填" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="dianhua" ErrorMessage="电话格式不正确" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{11}" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr style="color: #000000; font-family: 宋体">
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体">邮箱:</font></td>
                <td align="left" width="79%">
                    <asp:TextBox ID="youxiang" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="youxiang" ErrorMessage="邮箱格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>

            </tr>
                                
            <tr>
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体">身份证:</font></td>
                <td align="left" style="font-family: Times New Roman" width="79%">
                    <asp:TextBox ID="txtshenfenzheng" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtshenfenzheng" ErrorMessage="身份证格式不正确" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
                </td>

            </tr>
            <tr style="font-family: Times New Roman">
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体">地址:</font></td>
                <td align="left" width="79%">
                    <asp:TextBox ID="dizhi" runat="server" Width="395px"></asp:TextBox></td>

            </tr>
            <tr style="font-family: Times New Roman">
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体">性别:</font></td>
                <td align="left" width="79%">
                    <asp:DropDownList ID="xingbie" runat="server">

                    </asp:DropDownList></td>

            </tr>
            <tr>
                <td nowrap="nowrap" style="width: 164px">
                    <font face="宋体">备注:</font></td>
                <td align="left" width="79%">
                    <asp:TextBox ID="beizhu" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox></td>

            </tr>
            
            <tr>
                <td height="25" nowrap="nowrap" style="width: 164px">
                    <div align="right">
                        <font face="宋体"></font>&nbsp;</div>

                </td>
                <td align="left" height="25" width="59%">
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="border-right: #000000 1px solid;border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;                                 border-bottom: #000000 1px solid; height: 19px" Text="注册" /><font face="宋体">&nbsp;</font> 
                    <asp:Button ID="refresh" runat="server" OnClick="refresh_Click" Text="Button" Visible="False" />
                </td>

            </tr>
            <tr>
                <td colspan="2">
                    <div align="center">

                    </div>

                </td>

            </tr>

        </table>
    </ul>

	<!--<div class="page2 clearfix"><a href="" class="on">1</a><a href="">2</a><a href="">3</a><a href="">>></a></div>      -->
    
</div>

    
</div>


	<uc4:qtfoot2 ID="qtfoot2" runat="server" />


<script src="js/all.js" type="text/javascript"></script>
</form>
</body>
</html>