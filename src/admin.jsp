<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>
			Welcome Page
		</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
		<script type="text/javascript" src = "script.js"></script>
   </head>
	<body>
	<div id="outer">
	<div id="header">
			
				<div id="logo">
					<h1>
						Student Billing Portal
					</h1>
				</div>	
						<div>
				<div class="clock">
				<div id = "Date"></div>
<ul>
	<li id="hours"> </li>
    <li id="point">:</li>
    <li id="min"> </li>
    <li id="point">:</li>
    <li id="sec"> </li>
</ul>

</div>
</div>
		</div>
			<div id="banner">
							<img src="images/banner.jpg" alt="" />
			</div>
             <div id="nav">
					<ul>
						<li class="first">
							<a href="home.jsp">User Home</a>
						</li>
						<li>
							<a href="generalinfo.jsp">New Student Registration</a>
						</li>
						<li>
							<a href="modify.jsp">Modify Student Details</a>
						</li>
						<li>
							<a href="ahome.jsp">Admin Home</a>
						</li>						
						<li>
							<a href="contactus.jsp">Contact Admin</a>
						</li>
					</ul><br class="clear" />
				</div>
				<% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				
				
				
				   <% 
					if(request.getAttribute("Error")!=null){
					out.print("<h5 align = 'center'>");
					out.print(request.getAttribute("Error"));
					out.print("</h5>");
					}
					%>


                   
<div id="main">

<table align="right">
			
			<tr align="center"><td style="color: navy;"><B>Notice</B></td></tr>
			<tr><td><div><marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">Welcome Administrator sir.
															     You can have information
															     about various Accountants
															      </marquee></div></td></tr></table>

<h3 style="color: navy;" align="center"><B>ADITYA ENGINEERING COLLEGE</B></h3>
<div id="box">
	

<form method="post" action="aloginprocess.jsp" >
					<table>
					<tr><td style="color:navy;"><B>Administrator Login</B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>User Name:</td><td><input type="text" autocomplete = "off" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" autocomplete = "off" name="userpass"/></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="submit" value="Sign in"></td></tr>
					
					</table>
					</form>		

<br>

</div>

</div>

</body>


<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>