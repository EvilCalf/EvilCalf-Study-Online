<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zuoyefabu_detail.aspx.cs" Inherits="zuoyefabu_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>��̨����</title>
     <link href="images/StyleSheet.css" type="text/css" rel="Stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
            cellpadding="4" cellspacing="0" width="95%">
            <tr bgcolor="#f1f8f5">
                <td colspan="4">
                    <div align="center">
                        <font color="#ffffff">��ҵ������ϸ</font></div>
                </td>
            </tr>
            <tr>
                <td width='11%'>��ţ�</td><td width='39%'><%=nbianhao%></td><td width='11%'>��ҵ���ƣ�</td><td width='39%'><%=nzuoyemingcheng%></td></tr><tr><td width='11%'>Ҫ�����ݣ�</td><td width='39%'><%=nyaoqiuneirong%></td><td width='11%'>���ʱ�䣺</td><td width='39%'><%=nwanchengshijian%></td></tr><tr><td width='11%'>�����ˣ�</td><td width='39%'><%=nfaburen%></td><td>&nbsp;</td><td>&nbsp;</td>
            </tr>
            
            <tr>
                <td height="25" nowrap="nowrap" align="center" colspan="4">&nbsp;<font
                        face="����">&nbsp;<a href="javascript:history.back();">����</a></font></td>
            </tr>
            <tr bgcolor="#f1f8f5">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

