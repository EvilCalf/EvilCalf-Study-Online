<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">





<html>
<head>
<title>EvilCalf Study Online后台</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}

body{
    background:url("images/12312312.jpg") center fixed;
    background-size: cover;
}

.bg-img img{
	width: 100%;
}
.STYLE5 {color: #CCFFCC;
	font-size: 26pt;
}
.STYLE6 {color: #FFFFFF}
    .style1
    {
        height: 187px;
    }
    .style2
    {
        height: 267px;
    }
-->
</style>
</head>
<script language="javascript">
function refreshimg(){ 
document.getElementById("getcode").src = "VerifyCode.aspx?"+Math.random(); 
} 
</script>
<body background="images/12312312.jpg">
           
                    <form id="form1" runat="server">
<table width=100% height=100% border="0" align="center" cellpadding="0" cellspacing="0"  id="__01" >
  <tr>
    <td colspan="3" background="images/middleh40edbhf_01.png" class="style1"><table width="100%" height="114" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="32">&nbsp;</td>
      </tr>
      <tr>
        <td height="80"><div align="center" class="STYLE5">EvilCalf Study Online后台</div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="322" rowspan="2">&nbsp;</td>
    <td width="379" background="images/middleh40edbhf_03.png" class="style2"><table width="239" border="0" align="center" cellpadding="0" cellspacing="0">
     
        <tr>
          <td width="44" height="30"><span class="STYLE6">用户:</span></td>
          <td width="142" height="30"><asp:TextBox ID="TextBox1" runat="server" Style="border-right: #cadcb2 1px solid;
                  border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                  width: 130px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"
                  Width="138px"></asp:TextBox></td>
        </tr>
        <tr>
          <td height="30"><span class="STYLE6">密码:</span></td>
          <td height="30"> <asp:TextBox ID="TextBox2" runat="server" Style="border-right: #cadcb2 1px solid;
                  border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                  width: 130px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"
                  TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
          <td height="30"><span class="STYLE6">权限:</span></td>
          <td height="30"> <asp:DropDownList ID="cx" runat="server">
              </asp:DropDownList>
</td>
        </tr>
		 <tr>
          <td style="height: 30px"><span class="STYLE7">验证码:</span></td>
          <td style="width: 156px; height: 30px;"> <asp:TextBox ID="yzm" runat="server" Width="88px"></asp:TextBox>
                    <a href="javascript:refreshimg()" title="看不清楚，换个图片。">
                        <asp:Image ID="getcode" runat="server" src="VerifyCode.aspx" /></a>
		 </tr>
        <tr>
          <td height="30" colspan="2">
          
   &nbsp;<asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click"
                  onmouseout="this.style.backgroundColor='#FFCCFF'" onmouseover="this.style.backgroundColor='#ffffff'"
                  Style="border-right: #e1f4ee 1px solid; border-top: #e1f4ee 1px solid; font-size: 9pt;
                  border-left: #e1f4ee 1px solid; color: #000000; border-bottom: #e1f4ee 1px solid;
                  background-color: #ffccff" Text="登陆" Width="76px" />
              <input id="Reset1" onmouseout="this.style.backgroundColor='#FFCCFF'" onmouseover="this.style.backgroundColor='#ffffff'"
                  style="border-right: #e1f4ee 1px solid; border-top: #e1f4ee 1px solid; font-size: 9pt;
                  border-left: #e1f4ee 1px solid; width: 79px; color: #000000; border-bottom: #e1f4ee 1px solid;
                  height: 26px; background-color: #ffccff" type="reset" value="重置" />
                
                </td>
        </tr>
     
    </table></td>
    <td width="301" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</form>

</body>
</html>