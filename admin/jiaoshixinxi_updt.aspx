<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiaoshixinxi_updt.aspx.cs" Inherits="jiaoshixinxi_updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>后台管理</title><script language="javascript" src="js/Calendar.js"></script>
        <link href="images/StyleSheet.css" type="text/css" rel="stylesheet"/>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
<script language="javascript">	
function OpenScript(url,width,height)
{
  var win = window.open(url,"SelectToSort",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
	function OpenDialog(sURL, iWidth, iHeight)
{
   var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
   oDialog.focus();
}
</script>
	<body>
		<form id="form1" method="post" runat="server">
			<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="100%" align="center"
				borderColorLight="#145aa0" border="1">
				<tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>头像:</FONT></td><td width='79%'>
                        <asp:TextBox ID="zhaopian" runat="server" Width="395px"></asp:TextBox>
                        *<a href="javaScript:OpenScript('hsgupfile.aspx?Result=zhaopian',500,30)"><img align="absMiddle" border="0" height="16" src="images/Upload.gif" width="30" /></a><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>姓名:</FONT></td><td width='79%'><asp:textbox id='xingming' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorxingming" runat="server" ControlToValidate="xingming" ErrorMessage="必填"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>性别:</FONT></td><td width='79%'><asp:DropDownList ID='xingbie' runat='server'></asp:DropDownList></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>职称:</FONT></td><td width='79%'><asp:textbox id='zhicheng' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>出生日期:</FONT></td><td width='79%'><asp:TextBox ID='chushengriqi' runat='server' onclick="getDate(Form1.chushengriqi,'2')" need="1"></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>所学专业:</FONT></td><td width='79%'><asp:textbox id='suoxuezhuanye' Width='395px' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>现从事专业:</FONT></td><td width='79%'><asp:textbox id='xiancongshizhuanye' Width='395px' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>学历:</FONT></td><td width='79%'><asp:textbox id='xueli' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>学位:</FONT></td><td width='79%'><asp:textbox id='xuewei' runat='server'></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>工作时间:</FONT></td><td width='79%'><asp:TextBox ID='gongzuoshijian' runat='server' onclick="getDate(Form1.gongzuoshijian,'2')" need="1"></asp:TextBox></td></tr>
                               <tr>
                    <td nowrap="nowrap" style="width: 164px"><FONT face='宋体'>职工号:</FONT></td>
                    <td align="left" width="79%">
                        <a href="javaScript:OpenScript('hsgupfile.aspx?Result=zhaopian',500,30)">
                            <asp:textbox id='zhigonghao' runat='server'></asp:textbox>&nbsp;</a><asp:RequiredFieldValidator ID="RequiredFieldValidatorzhigonghao" runat="server" ControlToValidate="zhigonghao" ErrorMessage="必填"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                    
                    <tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>备注:</FONT></td><td width='79%'><asp:textbox id='beizhu' Width='400px' Height='82px' TextMode='MultiLine' runat='server' ></asp:textbox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>密码:</FONT></td><td width='79%'><asp:textbox id='mima' runat='server'></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatormima" runat="server" ControlToValidate="mima" ErrorMessage="必填"></asp:RequiredFieldValidator>
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">
						<asp:button id="Button1" runat="server" Text="修改" OnClick="Button1_Click"></asp:button><FONT face="宋体"></FONT></td>
				</tr>
				<tr>
					<td colSpan="2">
						<div align="center"></div>
					</td>
				</tr>
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>

