<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zuoyefabu_list2.aspx.cs" Inherits="zuoyefabu_list2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��̨����</title><script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        ������ҵ������Ϣ�б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; ��ţ�<asp:TextBox ID=bianhao runat="server"></asp:TextBox> ��ҵ���ƣ�<asp:TextBox ID=zuoyemingcheng runat="server"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" 
                           
                            PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True" ForeColor="#333333" GridLines="None">
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="White" />
                            <PagerStyle Font-Names="����" ForeColor="White" HorizontalAlign="Center"
                NextPageText="��һҳ" PrevPageText="��һҳ" BackColor="#2461BF" />
                            <EditItemStyle BackColor="#2461BF" CssClass="input_text" Font-Size="Smaller"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="���">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField=bianhao HeaderText='���'></asp:BoundColumn><asp:BoundColumn DataField=zuoyemingcheng HeaderText='��ҵ����'></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Ҫ������"><ItemTemplate><a href='<%#DataBinder.Eval(Container.DataItem, "yaoqiuneirong") %>' target='_blank'>����</a></ItemTemplate></asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="���ʱ��"><ItemTemplate><%# riqigeshi(DataBinder.Eval(Container.DataItem, "wanchengshijian"))%></ItemTemplate><HeaderStyle Width="100px" /></asp:TemplateColumn><asp:BoundColumn DataField=faburen HeaderText='������'></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="�޸�">
                               		<ItemTemplate>
                                    	<a href='zuoyefabu_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>�޸�</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="������">
                               		<ItemTemplate>
                                    	<a href='zuoyefabu_updt2.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>������</a>
                                	</ItemTemplate>
								<HeaderStyle Width="100px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="�鿴��"><ItemTemplate><a href='<%#DataBinder.Eval(Container.DataItem, "daan") %>' target='_blank'>����</a></ItemTemplate></asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=zuoyefabu&npage=zuoyefabu_list2.aspx' onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="��ϸ"><ItemTemplate><a href='zuoyefabu_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>��ϸ</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle HorizontalAlign="Center" BackColor="#EFF3FB" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">��ӡ��ҳ</a></td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
