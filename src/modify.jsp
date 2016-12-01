<html>
<head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">

<script>
var request;
function sendInfo()
{
var v=document.myform.findName.value;
var url="findname1.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hi').innerHTML=val;
}
}

function sendGenInfo(name)
{
var v=name;
var url="getgeninfoname.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getGenInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getGenInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hello').innerHTML=val;
}
}

</script>
</head>
<div id="outer">
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry, Please Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>
<body>
<h3 style="color: navy;" align="center"><B>ADITYA ENGINEERING COLLEGE</B></h3>
<div id="box">
<%
if(request.getAttribute("msg")!=null){
String msg=(String)request.getAttribute("msg");
out.print("<H5 align = 'center' style='color: navy'><B>");
out.print(msg);
out.print("</B></H5>");
}
%>

<form action="save1.jsp" name="myform" id="hello" method="post">
<table width="100%">
<tr>
<td><table width="55%" align="left" style="table-layout: fixed;">
		<tr><td>
<table cellspacing=15 cellpadding=15>
<tr><td><font style="color:navy"><B>Student Details:</B></font></td></tr>
<tr><td><B>Student ID:</B></td><td><input type="text" name="id"></input></td></tr>
<tr><td><B>First Name:</B></td><td><input type="text" name="fname" ></input></td></tr>
<tr><td><B>Second Name:</B></td><td><input type="text" name="sname" ></input></td></tr>
<tr><td><B>Father Name:</B></td><td><input type="text" name="faname" ></input></td></tr>
<tr><td><B>Mother Name:</B></td><td><input type="text" name="mname" ></input></td></tr>
<tr><td><B>Date of Birth:</B></td><td><input type="text" name="dateofbirth" id = "datepicker1"></input></td></tr>
<tr><td><B>Date of Joining:</B></td><td><input type="text" name="dateofjoining" id = "datepicker2"></input></td></tr>
<tr><td><B>Batch:</B></td><td><input type="text" name="batch" ></input></td></tr>
<tr><td><B>Branch:</B></td><td><select name="branch">
          <option>Select a Branch</option>
          <option>EEE</option>
          <option>MECH</option>
          <option>CSE</option>
          <option>ECE</option>
          <option>IT</option>
          <option>CIVIL</option>
          <option>PHARM</option>
          </select></td></tr>
<tr><td><B>Course:</B></td><td><select name="course">
          <option>Select a Course</option>
          <option>B.Tech</option>
          <option>M.Tech</option>
          <option>MBA</option>
          <option>MCA</option>
          <option>B.Pharmacy</option>
          <option>M.Pharmacy</option>
          </select></td></tr>
<tr><td><B>Mobile:</B></td><td><input type="text" name="mobile"></input></td></tr>
<tr><td><B>Land Phone:</B></td><td><input type="text" name="lphone"></input></td></tr>
<tr><td><B>Address:</B></td><td><textarea type="text" name="address"></textarea></td></tr>
<tr><td><B>First year fees:</B></td><td><input type="text" name="fyf"></input></td></tr>
<tr><td><B>First year fees paid:</B></td><td><input type="text" name="fyfp"></input></td></tr>
<tr><td><B>First year fees balance:</B></td><td><input type="text" name="fyfb"></input></td></tr>
<tr><td><B>Second year fees:</B></td><td><input type="text" name="syf"></input></td></tr>
<tr><td><B>Second year fees paid:</B></td><td><input type="text" name="syfp"></input></td></tr>
<tr><td><B>Second year fees balance:</B></td><td><input type="text" name="syfb"></input></td></tr>
<tr><td><B>Third year fees:</B></td><td><input type="text" name="tyf"></input></td></tr>
<tr><td><B>Third year fees paid:</B></td><td><input type="text" name="tyfp"></input></td></tr>
<tr><td><B>Third year fees balance:</B></td><td><input type="text" name="tyfb"></input></td></tr>
<tr><td><B>Fourth year fees:</B></td><td><input type="text" name="lyf"></input></td></tr>
<tr><td><B>Fourth year fees paid:</B></td><td><input type="text" name="lyfp"></input></td></tr>
<tr><td><B>Fourth year fees balance:</B></td><td><input type="text" name="lyfb"></input></td></tr>
<tr><td><B>Net Balance:</B></td><td><input type="text" name="nb" ></input></td></tr>
<tr><td></td><td><input style="padding:3px 3px" value=" Edit & Save" type="submit"></td></tr>
</table>
		</table>
<table align="right" width="25%" >
<tr>
<td><font style="color: navy;"><B>Search:</B></font><input type="text" name="findName" onkeyup="sendInfo()"></input></td>
</tr>
<tr><td><div id="hi"></div></td></tr>
</table>
</td>
</tr>
</table>
</form>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
  $( function() {
    $( "#datepicker1" ).datepicker();
    $( "#datepicker2" ).datepicker();
  } );
  </script>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>