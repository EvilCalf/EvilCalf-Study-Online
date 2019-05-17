<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qttop.ascx.cs" Inherits="qttop" %>

<div class="head block">
	<div class="top">
    <span class="fl">欢迎访问本站!!</span>
    <span class="fl ml10"><font class="fl">今天是：</font><div id="time" class="fl ml5"></div></span>
    <span class="fr pr20"><a onClick="SetHome(window.location)" href="javascript:void(0)">设为首页</a> | <a onClick="AddFavorite(window.location,document.title)" href="javascript:void(0)">加入收藏</a></span></div>
   
   
    <div class="logo">
    
    
    <img src="images/logo.jpg" width="1000" height="260"></div>

    <div class="navBar">
			<ul class="nav clearfix">
				<li class="m on">
					<h3><a href="Default.aspx">网站首页</a></h3>
				</li>
				<li class="s">|</li>
				<li class="m">
					<h3><a href="news.aspx?lb=站内新闻">站内新闻</a></h3>
				</li>
				<li class="s">|</li>
						<li class="m">
					<h3><a href="gonggaolist.aspx">系统公告</a></h3>
				</li>
				<li class="s">|</li>
				
                				<li class="m">
					<h3><a href=" bklist.aspx">答疑论坛</a></h3>
				</li>
				<li class="s">|</li>
               
				<li class="m">
					<h3><a href="zuoyefabulist.aspx">作业查看</a></h3>
				</li>
				<li class="s">|</li>
				<li class="m">
					<h3><a  href="zuoyeshangjiaolist.aspx">优秀作业展示</a></h3>
				</li>
				<li class="s">|</li>
				<li class="m">
					<h3><a href="userreg.aspx">用户注册</a></h3>
				</li>
				<li class="s">|</li>
				<li class="m">
					<h3><a href="admin/login.aspx">后台管理</a></h3>
				</li>
	
			</ul>

			<ul class="subNav border radius4">
			
        
            <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <!--<td width="5%" style="height: 41px" >公告</td>
                <td width="40%" style="height: 41px">
                <marquee onmouseover="stop()" onmouseout="start()" scrollAmount="2" width="100%"><p><%=ngg %></p></marquee></td>-->
           
                <td width="40%" style="height: 41px">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>     <asp:DropDownList ID="lb" runat="server">
                          </asp:DropDownList>
                          <asp:TextBox ID="keyword" runat="server" Width="217px"></asp:TextBox>
                          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜索" /></td>
                    </tr> 
                  </table>
                               
                </td>
              </tr>
            </table>
            
            
              
			</ul>
           
	</div>
    
</div>
        