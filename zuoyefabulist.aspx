<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zuoyefabulist.aspx.cs" Inherits="zuoyefabulist" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc2" %>
<%@ Register Src="qtfoot.ascx" TagName="qtfoot" TagPrefix="uc3" %>
<%@ Register Src="qtfoot2.ascx" TagName="qtfoot2" TagPrefix="uc4" %>
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
</head>


<body>
    <form id="form1" runat="server">
        <!--------------------------------------------ͷ����ʼ-------------------------------------------->
        <uc1:qttop ID="Qttop1" runat="server" />
        <!--------------------------------------------ͷ������-------------------------------------------->

        <div class="index-main clearfix">

            <uc2:qtleft ID="Qtleft1" runat="server" />

            <div class="right fr border">
                <div class="newsnav yh"><a href="">��ҳ</a> > ������ҵ������Ϣ�б�</div>
                <ul class="text-list">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td style="height: 527px" valign="top" height="527">
                                    <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
                                        cellspacing="1" class="table_1" width="98%">
                                        <tbody>

                                            <tr class="tr1">
                                                <td style="padding-left: 5px; height: 25px">&nbsp; ��ţ�<asp:TextBox ID="bianhao" runat="server"></asp:TextBox>
                                                    ��ҵ���ƣ�<asp:TextBox ID="zuoyemingcheng" runat="server"></asp:TextBox>
                                                    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" /><span
                                                        style="color: #0000ff; text-decoration: underline"> </span>
                                                    <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AllowSorting="True"
                                                        AutoGenerateColumns="False" CellPadding="4" font-name="verdana"
                                                        Font-Names="verdana" Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" OnPageIndexChanged="DataGrid1_PageIndexChanged"
                                                        PageSize="8" Width="100%" ForeColor="#333333" GridLines="None">
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
                                                            <asp:BoundColumn DataField="bianhao" HeaderText='���'></asp:BoundColumn>
                                                            <asp:BoundColumn DataField="zuoyemingcheng" HeaderText='��ҵ����'></asp:BoundColumn>
                                                            <asp:TemplateColumn HeaderText="Ҫ������">
                                                                <ItemTemplate>
                                                                    <a href='<%#DataBinder.Eval(Container.DataItem, "yaoqiuneirong") %>' target='_blank'>����</a>
                                                                </ItemTemplate>
                                                            </asp:TemplateColumn>
                                                            <asp:TemplateColumn HeaderText="���ʱ��">
                                                                <ItemTemplate>
                                                                    <%# riqigeshi(DataBinder.Eval(Container.DataItem, "wanchengshijian"))%>
                                                                </ItemTemplate>
                                                                <HeaderStyle Width="100px" />
                                                            </asp:TemplateColumn>
                                                            <asp:BoundColumn DataField="faburen" HeaderText='������'></asp:BoundColumn>
                                                            <asp:TemplateColumn HeaderText="�鿴��">
                                                                <ItemTemplate>
                                                                    <a href='<%#DataBinder.Eval(Container.DataItem, "daan") %>' target='_blank'>����</a>
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
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </ul>



            </div>


        </div>


        <uc4:qtfoot2 ID="qtfoot2" runat="server" />


        <script src="js/all.js" type="text/javascript"></script>
    </form>
</body>
</html>
