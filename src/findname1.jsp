<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");

PreparedStatement ps=con.prepareStatement("select * from student2 where id like '%"+n+"%'");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();
out.print("<table border='5' cellspacing=5 cellpadding=2 id='myTable'>");
out.print("<tr><td><a href='#' name='ID' onmouseover='javascript:viewAllInfo(this.name)'><B>ID</B></a></td><td><B>First Name</B></td><td><B>Last Name</B></td></tr>");
while(rs.next()){
out.print("<tr><td><a href='#' name='"+rs.getString(1)+"' onmouseover='javascript:sendGenInfo(this.name)'>"+rs.getString(1)+"</a></td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("</tr>");
}
out.print("</table>");
rs.close();
ps.close();
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>