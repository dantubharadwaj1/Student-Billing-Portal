<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");
PreparedStatement ps=con.prepareStatement("select * from payregister where ID like '%"+n+"%'");
out.print("<br>");
ResultSet rs=ps.executeQuery();
out.print("<table border='5' cellspacing=5 cellpadding=2 id='myTable'>");
out.print("<tr><td><a href='#' name='ID' onmouseover='javascript:viewAllInfo(this.name)'><B>ID</B></a></td><td><B>FirstName</B></td><td><B>Lastname</B></td><td><b>UserName</b></td><td><b>Phone</b></td></tr>");
while(rs.next()){
out.print("<tr><td><a href='#' name='"+rs.getString(1)+"'onmouseover='javascript:viewAll(this.name)'>"+rs.getString(1)+"</a></td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(9)+"</td>");
out.print("</tr>");
}
out.print("</table>");
rs.close();
ps.close();
con.close();
}catch(Exception e){e.printStackTrace();}
}
%>