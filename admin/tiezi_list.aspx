<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tiezi_list.aspx.cs" Inherits="tiezi_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��̨����</title>
     <link href="images/StyleSheet.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        ����������Ϣ�б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp;���⣺<asp:TextBox ID="bh" runat="server"></asp:TextBox>�û�����<asp:TextBox ID="mc"
                            runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                Text="����" />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" 
                           
                            PageSize="6" Width="100%" ForeColor="#333333" GridLines="None" >
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="White" />
                            <PagerStyle Font-Names="����" ForeColor="White" HorizontalAlign="Center" NextPageText="��һҳ" PrevPageText="��һҳ" BackColor="#2461BF" />
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
                                <asp:BoundColumn DataField=zhuangtai HeaderText='״̬'></asp:BoundColumn><asp:BoundColumn DataField=zhuti HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=yonghuming HeaderText='�û���'></asp:BoundColumn><asp:BoundColumn DataField=xingming HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=xingbie HeaderText='�Ա�'></asp:BoundColumn><asp:BoundColumn DataField=youxiang HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=gerenwangzhan HeaderText='������վ'></asp:BoundColumn><asp:BoundColumn DataField=neirong HeaderText='����'></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="�޸�">
                                <ItemTemplate>
                                    <a href='tiezi_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'
                                       >�޸�</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                 <ItemTemplate>
                                    <a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=tiezi&npage=tiezi_list.aspx'
                                        onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
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
