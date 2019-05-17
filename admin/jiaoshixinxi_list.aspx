<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiaoshixinxi_list.aspx.cs" Inherits="jiaoshixinxi_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>后台管理</title>
    <LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        所有教师信息列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp;职工号：<asp:TextBox ID="bh" runat="server"></asp:TextBox>姓名：<asp:TextBox ID="mc"
                            runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                Text="查找" />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" 
                           
                            PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True" ForeColor="#333333" GridLines="None">
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="White" />
                            <PagerStyle Font-Names="宋体" ForeColor="White" HorizontalAlign="Center"
                NextPageText="下一页" PrevPageText="上一页" BackColor="#2461BF" />
                            <EditItemStyle BackColor="#2461BF" CssClass="input_text" Font-Size="Smaller"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="序号">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField=zhigonghao HeaderText='职工号'></asp:BoundColumn><asp:BoundColumn DataField=xingming HeaderText='姓名'></asp:BoundColumn>
                                <asp:BoundColumn DataField=xingbie HeaderText='性别'></asp:BoundColumn><asp:BoundColumn DataField=zhicheng HeaderText='职称'></asp:BoundColumn><asp:BoundColumn DataField=chushengriqi HeaderText='出生日期'></asp:BoundColumn>
                                <asp:BoundColumn DataField=suoxuezhuanye HeaderText='所学专业'></asp:BoundColumn><asp:BoundColumn DataField=xiancongshizhuanye HeaderText='现从事专业'></asp:BoundColumn>
                                <asp:BoundColumn DataField=xueli HeaderText='学历'></asp:BoundColumn><asp:BoundColumn DataField=xuewei HeaderText='学位'></asp:BoundColumn><asp:BoundColumn DataField=gongzuoshijian HeaderText='工作时间'></asp:BoundColumn>
                                <asp:BoundColumn DataField=beizhu HeaderText='备注'></asp:BoundColumn><asp:BoundColumn DataField=mima HeaderText='密码'></asp:BoundColumn>
                                             <asp:TemplateColumn HeaderText="照片">
                                    <ItemTemplate>
                                    <a href='<%#DataBinder.Eval(Container.DataItem, "zhaopian") %>' target=_blank
                                       ><img src="<%#DataBinder.Eval(Container.DataItem, "zhaopian") %>" width=100 height=100 border=0 /></a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="修改">
                                <ItemTemplate>
                                    <a href='jiaoshixinxi_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'
                                       >修改</a>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="删除">
                                 <ItemTemplate>
                                    <a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=jiaoshixinxi&npage=jiaoshixinxi_list.aspx'
                                        onclick="return confirm('确定要删除？')">删除</a>
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
                       <a href="#" onclick="javascript:window.print();">打印本页</a></td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
