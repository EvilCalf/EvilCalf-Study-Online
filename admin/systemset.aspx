<%@ Page Language="C#" AutoEventWireup="true" CodeFile="systemset.aspx.cs" Inherits="systemset" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��̨����</title>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	 <link href="images/StyleSheet.css" type="text/css" rel="stylesheet"/>
	

</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="100%" align="center"
				borderColorLight="#145aa0" border="1">
				<tr bgColor="#f1f8f5">
					<td colSpan="2" style="height: 24px">
						<div align="center"><font color="#000000">ϵͳ����</font></div>
					</td>
				</tr>
				
			<tr>
			<td noWrap style="WIDTH: 60px; height: 43px;">
			<FONT face='����'>���˴ʻ�:</FONT></td>
			<td width='80%' style="height: 43px">
			<asp:TextBox ID='glch' runat='server' Width="512px" Height="21px"></asp:TextBox>&nbsp;
                �ʻ�֮����"|"�ָ� &nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" />
                </td>
                </tr>
                <tr>
                <td noWrap style="WIDTH: 60"></td><td width='79%'>
                    &nbsp;</td>
                    </tr>
                <tr>
                    <td height="25" nowrap="nowrap" style="width: 60">
                        <span style="font-family: ����">�Ƿ�IP:</span></td>
                    <td height="25" width="80%">
                        <asp:TextBox ID='txtIP' runat='server' Width="171px"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="����" /></td>
                </tr>
                <tr>
                    <td height="25" nowrap="nowrap" style="width: 60" colspan="2">
                       
                       <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="16" Width="100%" ForeColor="#333333" GridLines="None">
                            <EditItemStyle BackColor="#2461BF" CssClass="input_text" Font-Size="Smaller"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <PagerStyle Font-Names="����" ForeColor="White" HorizontalAlign="Center" NextPageText="��һҳ" PrevPageText="��һҳ" BackColor="#2461BF" />
                            <ItemStyle HorizontalAlign="Center" BackColor="#EFF3FB" />
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="���">
                                    <ItemTemplate>
                                        <%#Container.ItemIndex+1 %>
                                    </ItemTemplate>
                                    <HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="ip" HeaderText="�Ƿ�IP"></asp:BoundColumn>
                                <asp:BoundColumn DataField="addtime" HeaderText="����ʱ��"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                    <ItemTemplate>
                                        <a href='delip.aspx?delip=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=IP&npage=systemset.aspx'
                                            onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="White" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        </asp:DataGrid>&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <a href="#" onclick="javascript:window.print();">��ӡ��ҳ</a></td>
                </tr>
				<tr>
					<td colSpan="2">
						<div align="center"></div>
					</td>
				</tr>
				<tr bgColor="#f1f8f5">
					<td colSpan="2"></td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>
