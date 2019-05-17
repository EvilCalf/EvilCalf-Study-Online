<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tiezi_detail.aspx.cs" Inherits="tiezi_detail" %>
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
    <style type="text/css">


tbody {
	font-size: 12px;
}
        .auto-style1 {
            height: 71px;
        }
    </style>
</head>


<body>
<form id="form1" runat="server">
<!--------------------------------------------ͷ����ʼ-------------------------------------------->
	<uc1:qttop ID="Qttop1" runat="server" />
<!--------------------------------------------ͷ������-------------------------------------------->

<div class="index-main clearfix">

	<uc2:qtleft ID="Qtleft1" runat="server" />

<div class="right fr border">
	<div class="newsnav yh"><a href="">��ҳ</a> > ��������</div>
	<ul class="text-list">
    	    <table border="0" cellpadding="10" cellspacing="0" class="mainback" width="100%">
                        <tr>
                            <td>
                                <table align="center" border="0" cellpadding="4" cellspacing="0" width="98%">
                                    <tr>
                                        <td align="center" colspan="2">
			<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="100%" align="center"  border="0"  class="newsline" >
		
			       <tr bgcolor="#c9e9ba">
                        <td colspan="2">
                            <div align="center">
                                <a href="javascript:history.go(-1);" target="_parent"><img border="0" src="images/006.gif" alt=""/></a>
                             </div>
                        </td>
                </tr>	
			<tr><td noWrap style="WIDTH: 121px" align="left"><FONT face='����'>����:</FONT></td><td width='79%' align="left"><%=zt %></td></tr><tr><td noWrap style="WIDTH: 121px" align="left"><FONT face='����'>��������Ϣ:</FONT></td><td width='79%' align="left">
                ����:<%=xm %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �Ա�:<%=xb %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����:<%=yx %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ������վ:<%=wz %></td></tr><tr><td noWrap style="WIDTH: 121px" align="left"><FONT face='����'>����:</FONT></td><td width='79%' align="left" rowspan="2">
                    <%=nr %>&nbsp; <FONT face="����">&nbsp;</FONT>
                        </td></tr>
				
				
				
				<tr>
					<td noWrap height="25" style="WIDTH: 121px">
					</td>
				</tr>
				<tr>
					<td colSpan="2">
						<div align="center">
                            �ظ���Ϣ</div>
					</td>
				</tr>
                <tr>
                    <td colspan="2">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="8" Width="100%" ForeColor="#333333" GridLines="None" AllowPaging="True" ShowFooter="True">
                            <EditItemStyle BackColor="#2461BF" CssClass="input_text" Font-Size="Smaller"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <PagerStyle Font-Names="����" ForeColor="White" HorizontalAlign="Center" NextPageText="��һҳ" PrevPageText="��һҳ" BackColor="#2461BF" />
                            <AlternatingItemStyle BackColor="White" />
                            <ItemStyle HorizontalAlign="Center" BackColor="#EFF3FB" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="���">
                                    <ItemTemplate>
                                        <%#Container.ItemIndex+1 %>
                                    </ItemTemplate>
                                    <HeaderStyle Width="50px" />
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" VerticalAlign="Top" />
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="zhuti" HeaderText="����">
                                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" Width="400px" />
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Left" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="yonghuming" HeaderText="������">
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" VerticalAlign="Top" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="addtime" HeaderText="����ʱ��">
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" VerticalAlign="Top" />
                                </asp:BoundColumn>
                            </Columns>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="White" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        </asp:DataGrid></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style1">
                        ��ҲҪ�ظ�<br />
                        <dntb:WebEditor ID='content' runat="server" Skin="skin/xp/" systemFolder="admin/system_dntb/" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp; <asp:Button ID="Button1" runat="server" Text="�ظ�" OnClick="Button1_Click" /></td>
                </tr>
				<tr bgColor="#c9e9ba">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
                                            </td>
                                    </tr>
                                </table>
                            </td>
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