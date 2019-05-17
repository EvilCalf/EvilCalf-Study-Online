<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tiezilist.aspx.cs" Inherits="tiezilist" %>
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
	<div class="newsnav yh"><a href="">首页</a> > 帖子列表</div>
	<ul class="text-list">
    	 <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody>

        
       <tr bgcolor="#c9e9ba">
                <td colspan="2">
                    <div align="center">
                        <a href="javascript:history.go(-1);" target="_parent"><img border="0" src="images/006.gif" alt=""/></a>
                       <a href="tiezi_add.aspx" target="_parent"> <img src="images/001.gif" border="0" alt=""/></a>
                       </div>
                </td>
            
        </tr>
        <tr>
          <td width="100%" height="100%" valign="top">
                   &nbsp;主题：<asp:TextBox ID="zhuti" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                Text="查找" />
                    <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" font-name="verdana" Font-Names="verdana"  Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC"    PageSize="6" Width="100%" ForeColor="#333333" GridLines="None" >
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="White" />
                            <PagerStyle Font-Names="宋体" ForeColor="White" HorizontalAlign="Center" NextPageText="下一页" PrevPageText="上一页" BackColor="#2461BF" />
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
                                <asp:TemplateColumn HeaderText="分类">
                                    <ItemTemplate>
                                        <img src="images/<%#DataBinder.Eval(Container.DataItem, "zhuangtai")  %>.gif" alt=""/>
                                    </ItemTemplate>
                                    <HeaderStyle Width="30px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="主题">
                                     <ItemTemplate>
                                            <a href='tiezi_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'><%#DataBinder.Eval(Container.DataItem, "zhuti") %></a>
                                        </ItemTemplate>
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Left" />
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="yonghuming" HeaderText='发帖人'></asp:BoundColumn>
                                <asp:BoundColumn DataField="addtime" HeaderText="发帖时间"></asp:BoundColumn>
                            </Columns>
                            <ItemStyle HorizontalAlign="Center" BackColor="#EFF3FB" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        </asp:DataGrid>&nbsp;
              </td>
        </tr>
         <tr bgColor="#c9e9ba">
				<td colSpan="2">&nbsp;</td>
			</tr>
        <tr>
          <td valign="top" height="9"><img  src="images/index_r19_c8.jpg" width="320"  alt=""/> </td>
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