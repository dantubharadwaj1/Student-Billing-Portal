<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String username=request.getParameter("username");
//System.out.print(username);
String userpass=request.getParameter("userpass");
boolean status=false;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");
PreparedStatement ps=con.prepareStatement("select * from payregister where username=? and userpass=?");
ps.setString(1,username);
ps.setString(2,userpass);
ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
//System.out.print("hi");
username=rs.getString(2);
session.setAttribute("username",String.valueOf(username));
session.setAttribute("islogin","plz sign in first");
rs.close();
ps.close();
con.close();
%>
<jsp:forward page="home.jsp"></jsp:forward>
<%
}
else{
//System.out.print("hi");
request.setAttribute("Error","Sorry! Username or Password Error");
session.setAttribute("Loginmsg","Plz sign in first");
%>
<jsp:forward page="acclogin.jsp"></jsp:forward>
<%
}
}
catch(Exception e){
e.printStackTrace();
}

%>