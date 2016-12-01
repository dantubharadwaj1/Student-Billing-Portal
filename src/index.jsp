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
				<div class="captions">
					<h2><a href= "acclogin.jsp" style="color:#00ff00">User <br />Log In</a></h2>
				</div>
				<div class="captions" style="margin-right:1049px">
					<h2><a href = "admin.jsp" style="color:00ff00">Admin <br />Log&nbspIn</a></h2>
				</div>
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
							<a href="contactus.jsp">Contact admin</a>
						</li>
					</ul><br class="clear" />
				</div>
				
				<% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<h5 align = 'center'>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</h5>");
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
			<tr><td><div><marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">Last Date of fee Submission is 15/10/16
															     After that You'll have to collect 50 rupees 
															     per day as a fine on the tutuion fee
															     exclusively </marquee></div></td></tr></table>
		<h3 style="color: navy;" align="center"><B>ADITYA ENGINEERING COLLEGE</B></h3>
	<div id="sidebar">
				<div class="box">
			 
						</div>
				</div><br class="clear" />
			</div>		



	
			<div id="header">
					<h4 align="center" style="color:yellow">
						Copyright &copy 2016 ADITYA ENGINEERING COLLEGE

					</h4>
			</div>

</div>

	</body>
</html>