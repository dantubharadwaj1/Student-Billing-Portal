<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">

</head>
<body>

<div id="outer">
<jsp:include page="aheader.jsp"></jsp:include>


<div id="main">

<h3 style="color: navy;" align="center"><B>ADITYA ENGINEERING COLLEGE</B></h3>
<div id="box">

<form name="myform" action="asave.jsp">
<h3 style="color: navy"><b>CREATE ACCOUNTANT FORM</b></h3>
<table>
<tr><td><br></td></tr>

    <tr><td>First name:  </td><td><input type="text" autocomplete = "off" name="firstname"/></td></tr>
	<tr><td><br></td></tr>
    <tr><td>Last Name:  </td><td><input type="text" autocomplete = "off" name="lastname"/></td></tr>
	<tr><td><br></td></tr>
    <tr><td>Username:  </td><td><input type="text" autocomplete = "off" name="username"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Password:  </td><td><input type="password" autocomplete = "off" name="userpass"/></td></tr>
	<tr><td><br></td></tr>
    <tr><td>Date of Joining:</td><td><input type="text" autocomplete = "off" name="doj" id="datepicker1"/></td></tr>
	<tr><td><br></td></tr>
   <tr><td>Date of Birth:</td><td><input type="text" autocomplete = "off" name="dob" id="datepicker2"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Phone:</td><td><input type="text" autocomplete = "off" name="phone"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td> Address:</td><td><textarea name="address" autocomplete = "off"></textarea></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Salary:</td><td><input type="text"  autocomplete = "off" name="salary"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td></td><td><input type="submit" value="create" style="padding: 2"></td></tr>
	<tr><td><br></td></tr>
</table>
<div id="location" align="left"></div>
</form>

</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>

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

</html>
