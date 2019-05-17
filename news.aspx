<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>
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
<!--------------------------------------------头部开始-------------------------------------------->
	<uc1:qttop ID="Qttop1" runat="server" />
<!--------------------------------------------头部结束-------------------------------------------->

<div class="index-main clearfix">

	<uc2:qtleft ID="Qtleft1" runat="server" />

<div class="right fr border">
	<div class="newsnav yh"><a href="">首页</a> > 新闻</div>
	<ul class="text-list">
    	 <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"  border="0"  class="newsline" ItemStyle-Height="20" OnPageIndexChanged="DataGrid1_PageIndexChanged" PageSize="25" ShowHeader="False" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                  <AlternatingItemStyle BackColor="White" />
                  <Columns>
                      <asp:TemplateColumn>
                          <ItemTemplate>
                              <img src="images/li-ico2.jpg">
                          </ItemTemplate>
                          <HeaderStyle Width="20px" />
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="标题">
                                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                            Font-Underline="False" HorizontalAlign="Left" />
                                        <ItemTemplate>
                                            [<%#DataBinder.Eval(Container.DataItem, "leibie")%>] <a href='newsdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                <%#DataBinder.Eval(Container.DataItem, "title") %>
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn>
                                        <ItemTemplate>
                                            被点击
                                            <%# DataBinder.Eval(Container.DataItem, "dianjilv")%>
                                            次
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="addtime" HeaderText="发布时间">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundColumn>
                  </Columns>
                  <EditItemStyle BackColor="#2461BF" />
                  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

<ItemStyle Height="20px" BackColor="#EFF3FB"></ItemStyle>

                  <PagerStyle NextPageText="下一页" PrevPageText="上一页" BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
              </asp:DataGrid>
    </ul>


    
</div>

    
</div>


	<uc4:qtfoot2 ID="qtfoot2" runat="server" />


<script src="js/all.js" type="text/javascript"></script>
</form>
</body>
</html>