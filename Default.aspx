<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
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


<script language="javascript" type="text/javascript">
function refreshimg(){ 
document.getElementById("getcode").src = "VerifyCode.aspx?"+Math.random(); 
} 
</script>
    <style type="text/css">
        .auto-style1 {
            width: 124px;
        }
        .auto-style2 {
            width: 206px;
        }
    </style>
</head>


<body>
<form id="form1" runat="server"  DefaultButton="Button1">
<!--------------------------------------------ͷ����ʼ-------------------------------------------->
	<uc1:qttop ID="Qttop1" runat="server" />
<!--------------------------------------------ͷ������-------------------------------------------->

<div class="index-main clearfix">
	<!--����ͼ-->
    <div class="focusBox fl">
			<ul class="pic">
			
			     <asp:Repeater ID="Repeaterxwtp" runat="server">
             <ItemTemplate> 
            	<li><a href="newsdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>" ><img src="	<%# "admin\\"+Eval("shouyetupian") %>" width="282" height="237" alt="" /></a></li>
           </ItemTemplate>
            </asp:Repeater>
				
	
			</ul>
			<div class="txt-bg"></div>
			<div class="txt">
				<ul>
	
					
			<asp:Repeater ID="Repeaterxwbt" runat="server">
             <ItemTemplate> 
            		<li><a href="#"> <%# CutStr2(DataBinder.Eval(Container.DataItem, "title "))%></a></li>
	
           </ItemTemplate>
            </asp:Repeater>
				</ul>
			</div>

			<ul class="num">
				<li><a>1</a><span></span></li>
				<li><a>2</a><span></span></li>
				<li><a>3</a><span></span></li>
				<li><a>4</a><span></span></li>
			</ul>
	</div>
    
    <!--TABѡ�-->
    <div class="slideTxtBox fl ml8">
        <div class="hd">
            <ul><li>վ������</li></ul>
        </div>
        <div class="bd newsline">
        
  
             <ul>
            
            <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate> 
             <li><span class="date"> <%#DataBinder.Eval(Container.DataItem, "addtime") %></span><a href="newsdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>" >  <%# CutStr(DataBinder.Eval(Container.DataItem, "title "))%></a></li>
           </ItemTemplate>
            </asp:Repeater>
            </ul>
        </div>
		</div>
        
        <!--԰����ʾ-->
        <div class="yqgs border fr">
        	<div class="title">�û���¼</div>
            <ul>
	             
					 <asp:Panel ID="Panel1" runat="server" Height="50px" Width="180px">
        <table height="103" border="0" align="center" cellpadding="0" cellspacing="0" width=211 >
        
        
            <tr>
                <td align="right">
                    �û���:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right">
                    ����:</td>
                   <td>     <asp:TextBox ID="TextBox2" runat="server" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" TextMode="Password"></asp:TextBox></td>
            </tr>
                     <tr>
          <td align="right"><span class="STYLE7">��֤��:</span></td>
          <td> <asp:TextBox ID="yzm" runat="server" Width="55px"  ></asp:TextBox>
                    <a href="javascript:refreshimg()" title="�������������ͼƬ��">
                        <asp:Image ID="getcode" runat="server" src="VerifyCode.aspx" /></a>
		 </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; border-left: #cadcb2 1px solid;
                        color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" Text="��¼" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; border-left: #cadcb2 1px solid;
                        color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" Text="�˳���¼" /></td>
            </tr>
        </table>
    </asp:Panel> 
   
           <asp:Panel ID="Panel2" runat="server" Height="50px" Width="180px">
                            <table width="211" height="103" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td align="right" class="auto-style2">
                                        �û���:</td>
                                    <td ><%=Session["username"].ToString().Trim() %>
                                        </td>
                                </tr>
                                <tr style="height:60px">
                                    <td align="right" class="auto-style2">
                                        ��ӭ���½��վ��
                                        
                                    </td>
                                   
                                </tr>
                
                                <tr>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td style="width: 148px">
                                        <asp:Button ID="Button3" runat="server" Height="18px" OnClick="Button2_Click"
                                                Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                                border-left: #cadcb2 1px solid; color: #81b432; border-bottom: #cadcb2 1px solid"
                                                Text=" �� �� " Width="46px" />
                                        &nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Height="18px" OnClick="Button4_Click"
                                                Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                                border-left: #cadcb2 1px solid; color: #81b432; border-bottom: #cadcb2 1px solid"
                                                Text="���˺�̨ " Width="67px" /></td>
                                </tr>
                            </table>
                        </asp:Panel> 
                      
                     
            </ul>
            
            
            
        </div>
        

    
    
   
    
    <!--ͼƬ����-->
    <div class="pic-news">
			<div class="bd">
				<ul class="picList">
			
                        
                        <asp:Repeater id="Repeatertp" runat="server">
                         <ItemTemplate> 
                        
                       
                       	<li>
						<div class="pic">
						  <!-- <a href='wangshangzhantingdetail.aspx?id=<%# Eval("id") %>'>-->
						<a href="#"><img src="<%# "admin\\"+Eval("tupian") %>" /></a></div>
						<p class="center">
					
						<%# Eval("mingcheng") %>
						
						</p>
					</li>
                       </ItemTemplate>
                        </asp:Repeater>
                        
				</ul>
			</div>
		</div>
		
		
    <!--վ������2-->
    	<div class="slideTxtBox grqz fl ml8 mt10">
            <div class="hd h30">
                <ul><li>�û���֪</li></ul>
            </div>
         <div class="bd newsline">
        
  
             <ul>
            
            <asp:Repeater ID="Repeaterxw2" runat="server" EnableViewState="False">
             <ItemTemplate> 
             <li><span class="date"> <%#CutDate(DataBinder.Eval(Container.DataItem, "addtime")) %></span><a href="newsdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>" >  <%# CutStr2(DataBinder.Eval(Container.DataItem, "title "))%></a></li>
           </ItemTemplate>
            </asp:Repeater>
            </ul>
        </div>
    </div>
    
    <!--ϵͳ���-->
    <div class="slideTxtBox qyzp fr mt10">
            <div class="hd h30">
            	<a href="#" class="fr fm1 pr10">MORE<<</a>
                <ul><li>ϵͳ���</li></ul>
            </div>
            <div class="zp">
            	<ul class="clearfix">
                    <%=ncontent %>
                </ul>
            </div>
    </div>
    
    <!--��������-->
    <uc3:qtfoot ID="qtfoot" runat="server" />


</div>

    <uc4:qtfoot2 ID="qtfoot2" runat="server" />

<script src="js/all.js" type="text/javascript"></script>
</form>
</body>
</html>