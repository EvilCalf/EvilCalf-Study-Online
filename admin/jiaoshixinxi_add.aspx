<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiaoshixinxi_add.aspx.cs" Inherits="jiaoshixinxi_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��̨����</title><script language="javascript" src="js/Calendar.js"></script>
        <link href="images/StyleSheet.css" type="text/css" rel="stylesheet"/>

	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</head>
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
				<tr bgColor="#f1f8f5">
					<td colSpan="2">
						<div align="center"><font color="#000000">��ӽ�ʦ��Ϣ</font></div>
					</td>
				</tr>
				
			<tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>ͷ��:</FONT></td><td width='79%'>
                        <asp:TextBox ID="zhaopian" runat="server" Width="395px"></asp:TextBox>
                        <a href="javaScript:OpenScript('hsgupfile.aspx?Result=zhaopian',500,30)">
                            <img align="absMiddle" border="0" height="16" src="images/Upload.gif" width="30" /></a>*<tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='xingming' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorxingming" runat="server" ControlToValidate="xingming" ErrorMessage="����"></asp:RequiredFieldValidator><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>�Ա�:</FONT></td><td width='79%'><asp:DropDownList ID='xingbie' runat='server'></asp:DropDownList></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>ְ��:</FONT></td><td width='79%'><asp:TextBox ID='zhicheng' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>��������:</FONT></td><td width='79%'><asp:TextBox ID='chushengriqi' runat='server' onclick="getDate(Form1.chushengriqi,'2')" need="1"></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>��ѧרҵ:</FONT></td><td width='79%'><asp:TextBox ID='suoxuezhuanye' Width='395px' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>�ִ���רҵ:</FONT></td><td width='79%'><asp:TextBox ID='xiancongshizhuanye' Width='395px' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>ѧ��:</FONT></td><td width='79%'><asp:TextBox ID='xueli' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>ѧλ:</FONT></td><td width='79%'><asp:TextBox ID='xuewei' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>����ʱ��:</FONT></td><td width='79%'><asp:TextBox ID='gongzuoshijian' runat='server' onclick="getDate(Form1.gongzuoshijian,'2')" need="1"></asp:TextBox></td></tr>
            
                
                <tr>
                    <td nowrap="nowrap" style="width: 164px"><FONT face='����'>ְ����:</FONT></td>
                    <td align="left" width="79%">
                        <a href="javaScript:OpenScript('hsgupfile.aspx?Result=zhaopian',500,30)">
                            <asp:TextBox ID='zhigonghao' runat='server'></asp:TextBox>&nbsp;</a><asp:RequiredFieldValidator ID="RequiredFieldValidatorzhigonghao" runat="server" ControlToValidate="zhigonghao" ErrorMessage="����"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                <tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>��ע:</FONT></td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server'></asp:TextBox></td></tr><tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='mima' runat='server'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatormima" runat="server" ControlToValidate="mima" ErrorMessage="����"></asp:RequiredFieldValidator>
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="����"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">
						<asp:button id="Button1" runat="server" Text="���" onclick="Button1_Click"></asp:button><FONT face="����"></FONT></td>
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
</html>
