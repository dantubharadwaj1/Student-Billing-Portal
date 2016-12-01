<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");

PreparedStatement ps=con.prepareStatement("select * from payregister where id ='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<table border='5' cellspacing=5 cellpadding=2>");
out.print("<tr><td><B>ID</B></a></td><td><B>FirstName</B></td><td><B>LastName</B></td><td><B>UserName</B></td><td><B>Password</B></td><td><B>DateofJoining</B></td><td><B>DateofBirth</B></td><td><B>Address</B></td><td><B>Phone</B></td><td><B>Delete</B></td></tr>");
while(rs.next()){
out.print("<tr><td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(5)+"</td>");
out.print("<td>"+rs.getString(6)+"</td>");
out.print("<td>"+rs.getString(7)+"</td>");
out.print("<td>"+rs.getString(8)+"</td>");
out.print("<td>"+rs.getString(9)+"</td>");
out.print("<td><a href='aremove.jsp?val="+rs.getString(1)+"' name='"+rs.getString(1)+"'>Delete</a></td>");
out.print("</tr>");
}
out.print("</table>");
rs.close();
ps.close();
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>