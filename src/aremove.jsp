<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");

PreparedStatement ps=con.prepareStatement("delete from payregister where id ='"+n+"'");
ps.executeUpdate();
ps.close();
con.close();
request.setAttribute("msg","Accountant Record Has been Successfully Deleted !");
}catch(Exception e){e.printStackTrace();}
}
%>
<jsp:forward page="ahome.jsp"></jsp:forward>