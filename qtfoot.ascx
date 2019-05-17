<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qtfoot.ascx.cs" Inherits="qtfoot" %>



	
 <!--ÓÑÇéÁ´½Ó-->
    <div class="friendlink">
    	<div class="title" ></div>
    	<ul>


             
                   <asp:Repeater ID="Repeateryqlj" runat="server">
             <ItemTemplate> 
           	<li><a href="<%# Eval("wangzhi")%>"><%# Eval("wangzhanmingcheng")%></a></li>
           </ItemTemplate>
            </asp:Repeater>
             
             </ul>
    </div>
    