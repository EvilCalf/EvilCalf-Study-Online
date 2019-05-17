<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zuoyefabu_detail.aspx.cs" Inherits="zuoyefabu_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>后台管理</title>
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
                        <font color="#ffffff">作业发布详细</font></div>
                </td>
            </tr>
            <tr>
                <td width='11%'>编号：</td><td width='39%'><%=nbianhao%></td><td width='11%'>作业名称：</td><td width='39%'><%=nzuoyemingcheng%></td></tr><tr><td width='11%'>要求内容：</td><td width='39%'><%=nyaoqiuneirong%></td><td width='11%'>完成时间：</td><td width='39%'><%=nwanchengshijian%></td></tr><tr><td width='11%'>发布人：</td><td width='39%'><%=nfaburen%></td><td>&nbsp;</td><td>&nbsp;</td>
            </tr>
            
            <tr>
                <td height="25" nowrap="nowrap" align="center" colspan="4">&nbsp;<font
                        face="宋体">&nbsp;<a href="javascript:history.back();">返回</a></font></td>
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

