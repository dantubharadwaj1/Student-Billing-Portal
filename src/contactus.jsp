
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
<Font style="color: navy;" size="4">Contact Admin:</Font>
<form method="post" name="myform" id="myform" action="query.jsp">
<table width="100%">
<tr>
<td>
<table width="55%" align="left" >
<tr><td><img src="images/pic01.jpg"/></td>
<td><Font style="color: navy;" size="3"><B>Your Query:</B></Font><br>

<textarea name="query" style="width: 600px; height:80px"></textarea><br>
<Font style="color: navy;" size="2"><B>Email Id:</B></Font><input type="text" name="email" style="width: 180px; "/>
<input type="submit" value="submit" style="padding: 2px 2px" >
</td>
</tr>
</table>
</td>
<td>

</td>
</tr>

</table>
</form>
</body>

<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>