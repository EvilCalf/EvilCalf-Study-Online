<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left2.aspx.cs" Inherits="left2" %>



<html>
<head>
<title>left</title><script src="images/prototype.js"></script>
<link rel="stylesheet" href="images/css.css">

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
-->
</style>
</head>


<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
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
		<td  background="images/left_02_01_02.gif"><table width="100%"   border="0" cellpadding="0" cellspacing="0" background="images/left_02_01_02.gif" id="Table1">
          <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table2">
              <tr onClick="new Element.toggle('submenu1')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>注册用户管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td   style="display:none"  id="submenu1">
				<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                         <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                          <td ><a href="yonghuzhuce_updt2.aspx" target="mainFrame">注册用户管理</a></td>
                        </tr>
	        
	                 
                      </table>				
                 </td>
              </tr>
              
            </table></td>
          </tr>
          
          
          
          
        
          <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" id="Table3">
              <tr onClick="new Element.toggle('submenu2')" style="cursor:hand;">
                <td  height="33" background="images/left_02_01_01.gif">
                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="23%" height="26" align="center" valign="middle">&nbsp;</td>
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>作业管理</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu2"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="zuoyeshangjiao_add.aspx" target="mainFrame">作业上交</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="zuoyeshangjiao_list2.aspx" target="mainFrame">已交作业查询</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
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
                  <td  background="images/left_02_01_02.gif"   id="Td1"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="2" align="center"><p><br>
                          系统作者：xxxxxx</p>
                        <p>指导老师：xxxxx</p>
                        <p>所在学校：xxxxx</p></td>
                      </tr>
                      
                  </table></td>
                </tr>
              
              </table></td>
          </tr>
        </table></td>
	</tr>
	
</table>
</body>
</html>
