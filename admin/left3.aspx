<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left3.aspx.cs" Inherits="left3" %>



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
    .auto-style1 {
        height: 28px;
    }
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
            <td height="17" align="right" valign="middle" class="lancu">�û�: </td>
            <td align="left" valign="middle" class="lancu"><%=Session["username"].ToString().Trim()%> </td>
          </tr>
          <tr>
            <td align="right" valign="middle" class="lancu">Ȩ��: </td>
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
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>��ʦ��Ϣ����</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td   style="display:none"  id="submenu1">
				<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                         <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                          <td ><a href="jiaoshixinxi_updt2.aspx" target="mainFrame">�ҵ���Ϣ����</a></td>
                        </tr>
	        
	                 
                      </table>				
                 </td>
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
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>��̳����</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu2">
                <table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="bankuai_add.aspx" target="mainFrame">������</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="bankuai_list.aspx" target="mainFrame">������</a></td>
                    </tr>


                         <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="tiezi_list.aspx" target="mainFrame">���ӹ���</a></td>
                    </tr>

                                <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="systemset.aspx" target="mainFrame">��̳��������</a></td>
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
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>���Դ��ɹ���</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu3">
                <table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="lyb_gl.aspx" target="mainFrame">���Դ��ɹ���</a></td>
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
                    <td width="77%" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>��ҵ����</strong></span></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td  background="images/left_02_01_02.gif"  style="display:none"  id="submenu4">
                <table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="zuoyefabu_add.aspx" target="mainFrame">��ҵ����</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="zuoyefabu_list2.aspx" target="mainFrame">�ѷ�����ҵ��ѯ</a></td>
                    </tr>
                             <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="zuoyeshangjiao_list.aspx" target="mainFrame">�鿴ѧ����ҵ</a></td>
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
                        <td height="26" align="center" valign="middle"><span class="SystemLeft STYLE2"><strong>ϵͳ��Ȩ</strong></span></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td  background="images/left_02_01_02.gif"   id="Td1"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="2" align="center"><p><br>
                          ϵͳ���ߣ���Ѷ�</p>

                        <p class="auto-style1">����ѧУ���㽭��ýѧԺ</p></td>
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
