<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>

<html>
<head>
<title>left</title><script src="images/prototype.js"></script>
<link rel="stylesheet" href="css.css">

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
    
<!--
body,td,th {
	font-size: 12px;
}
.STYLE1 {color: #F33532}
body {
	background-color: #F7F7F7;
	background-image: url(images/left_02_01_02.gif);
}
.STYLE2 {color: #FFFFFF}
    .auto-style1 {
        height: 105px;
    }
    .auto-style2 {
        height: 37px;
    }
-->
</style>
</head>


<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
<table id="__01"  border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="158" height="105" background="images/1_02_02_01.jpg">
		<table width="100%" height="90%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="40%" height="62" align="center" valign="middle">&nbsp;</td>
            <td width="60%" align="center" valign="middle">&nbsp;</td>
          </tr>
          <tr>
            <td height="17" align="right" valign="middle" class="lancu">用户: </td>
            <td align="left" valign="middle" class="lancu"><%=Session["username"].ToString().Trim()%> </td>
          </tr>
          <tr>
            <td align="right" valign="middle" class="lancu">权限: </td>
            <td align="left" valign="middle" class="lancu"><%=Session["cx"].ToString().Trim()%> </td>
          </tr>
        </table>
        </td>
	</tr>
	<tr>
		<td  background="images/left_02_01_02.gif"><table width="100%"   border="0" cellpadding="0" cellspacing="0" background="images/left_02_01_02.gif" id="Table0">
          <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table1">
              <tr onClick="new Element.toggle('submenu1')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>系统用户管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td   style="display:none"  id="submenu1">
				<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
     <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
      <td ><a href="edituser.aspx" target="mainFrame">管理员管理</a></td>
    </tr>

	<tr>
     <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
      <td ><a href="mod.aspx" target="mainFrame">修改密码</a></td>
    </tr>
    	 <tr>
     <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
      <td ><a href="yonghuzhuce_list.aspx" target="mainFrame">注册会员管理</a></td>
    </tr>
  </table>				</td>
              </tr>
              
            </table></td>
          </tr>
        
        
          <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table2">
              <tr onClick="new Element.toggle('submenu2')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>信息管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu2"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="news_add.aspx?lb=站内新闻" target="mainFrame">站内新闻添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="news_list.aspx?lb=站内新闻" target="mainFrame">站内新闻查询</a></td>
                    </tr>
                              <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="news_add.aspx?lb=用户须知" target="mainFrame">用户须知添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="news_list.aspx?lb=用户须知" target="mainFrame">用户须知查询</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
          </tr>
        
        



            <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table3">
              <tr onClick="new Element.toggle('submenu3')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>教师信息管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu3">
                <table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="jiaoshixinxi_add.aspx" target="mainFrame">新增教师</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="jiaoshixinxi_list.aspx" target="mainFrame">管理教师</a></td>
                    </tr>
               
                </table></td>
              </tr>
             
            </table></td>
          </tr>




        
               <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table4">
              <tr onClick="new Element.toggle('submenu4')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>作业管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu4">
                <table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="zuoyefabu_add.aspx" target="mainFrame">作业发布</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="zuoyefabu_list2.aspx" target="mainFrame">已发布作业查询</a></td>
                    </tr>
                             <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="zuoyeshangjiao_list.aspx" target="mainFrame">查看学生作业</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
          </tr>

        
          
               <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table5">
              <tr onClick="new Element.toggle('submenu5')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>留言答疑管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu5">
                <table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="lyb_gl.aspx" target="mainFrame">留言答疑管理</a></td>
                    </tr>
              
                </table></td>
              </tr>
             
            </table></td>
          </tr>





               <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table6">
              <tr onClick="new Element.toggle('submenu6')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>论坛管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu6">
                <table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="bankuai_add.aspx" target="mainFrame">板块添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="bankuai_list.aspx" target="mainFrame">版块管理</a></td>
                    </tr>


                         <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="tiezi_list.aspx" target="mainFrame">帖子管理</a></td>
                    </tr>

                                <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="systemset.aspx" target="mainFrame">论坛过滤设置</a></td>
                    </tr>
                    
                </table></td>
              </tr>
             
            </table></td>
          </tr>
        



               <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table10">
              <tr onClick="new Element.toggle('submenu10')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>校园风景管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu10">
                <table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="tupian_add.aspx" target="mainFrame">校园风景添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="tupian_list.aspx" target="mainFrame">校园风景查询</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
          </tr>
        
          <tr>
            <td>
              <table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table11">
                <tr onClick="new Element.toggle('submenu11')" style="cursor:hand;">
                  <td  height="33" background="images/menu6.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                      <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>系统管理</strong></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td  background="images/left_02_01_02.gif"   id="submenu11"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="youqinglianjie_add.aspx" target="mainFrame">友情连接添加</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="youqinglianjie_list.aspx" target="mainFrame">友情连接查询</a></td>
                      </tr>
				 
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="dx.aspx?lb=1" target="mainFrame">系统简介设置</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="dx.aspx?lb=2" target="mainFrame">系统公告设置</a></td>
                      </tr>
         
                  </table></td>
                </tr>
               
              </table>
		    </td>
          </tr>
          <tr>
            <td>
              <table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table5">
                <tr >
                  <td  height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="26" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>系统版权</strong></span></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td  background="images/left_02_01_02.gif"   id="Td1"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0" class="auto-style1">
                      <tr>
                        <td colspan="2" align="center">
                            <p><br>
                          系统作者：徐佳鼎</p>
                        <p>所在学校：浙江传媒学院</p> </td>
                        
                      </tr>
                      
                  </table></td>
                </tr>
              
              </table></td>
          </tr>
        </table></td>
	</tr>

</table>
    
    </form>
    
</body>
</html>