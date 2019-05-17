//容错脚本
function ResumeError()
 {
        return true;
    }
window.onerror = ResumeError;


function Getcolor(img_val,Url,input_val){
	var arr = showModalDialog(Url, "", "dialogWidth:18.5em; dialogHeight:17.5em; status:0; help:0");
	if (arr != null){
		document.getElementById(input_val).value = arr;
		img_val.style.backgroundColor = arr;
		}
}
function openScript(url, width, height){
var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}

function OpenThenSetValue(Url,Width,Height,WindowObj,SetObj)
{
	var ReturnStr=showModalDialog(Url,WindowObj,'dialogWidth:'+Width+'pt;dialogHeight:'+Height+'pt;status:no;help:no;scroll:no;status:0;help:0;scroll:0;');
	if (ReturnStr!='') SetObj.value=ReturnStr;
	return ReturnStr;
}

//列表颜色变换
function overColor(Obj)
{
	var elements=Obj.childNodes;
	for(var i=0;i<elements.length;i++)
	{
		elements[i].className="tdbg1"
		Obj.bgColor="";
	}
	
}
function outColor(Obj)
{
	var elements=Obj.childNodes;
	for(var i=0;i<elements.length;i++)
	{
		elements[i].className="tdbg";
		Obj.bgColor="";
	}
}
function getlicense()
{
  if (document.getElementById('viewlicense').checked==true)
  {
    document.getElementById('license').style.display='';
	document.getElementById('license1').style.display='';
  }
  else
  {
   document.getElementById('license').style.display='none';
   document.getElementById('license1').style.display='none';
  }
}

//显示图层
function show_icon_cho(i)
{ 
var xx=document.FrontPage_Form1.select_icon.options[document.FrontPage_Form1.select_icon.selectedIndex].value;

// if(xx.indexOf("images")!=1) 
   if(xx.length>5) 
	 { 	
		i.style.display = "" 
		document.show_icon.src=xx;
        document.FrontPage_Form1.icon.value="<img src="+xx+" border=0 class=list_icon>";
	 }
	 else
	  { 
         i.style.display = "none";  
		 document.FrontPage_Form1.icon.value=xx;

	  }
}

function admin_Size(num,objname)
{
	var obj=document.getElementById(objname)
	if (parseInt(obj.rows)+num>=3) {
		obj.rows = parseInt(obj.rows) + num;	
	}
	if (num>0)
	{
		obj.width="90%";
	}
}
//Obj单击的对象,ButtonSymbol按钮状态,MainUrl--MainFrame的链接
function SelectObjItem(Obj,ButtonSymbol,MainUrl)
{  
    if(MainUrl!='')
	{window.parent.parent.frames['main'].location.href=MainUrl;
	}

}