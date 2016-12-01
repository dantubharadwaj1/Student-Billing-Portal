<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");

PreparedStatement ps=con.prepareStatement("select * from student2 where id ='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<br>");
out.print("<br>");
out.print("<br>");




out.print("<table border='5' cellspacing=5 cellpadding=2>");
out.print("<tr><td><B>ID</B></a></td><td><B>First year fees balance</B></td><td><B>Second year fees balance</B></td><td><B>Third year fees balance</B></td><td><B>Fourth year fees balance</B></td><td><B>Net balance</B></td></tr>");
while(rs.next()){
out.print("<tr><td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(15)+"</td>");
out.print("<td>"+rs.getString(18)+"</td>");
out.print("<td>"+rs.getString(21)+"</td>");
out.print("<td>"+rs.getString(24)+"</td>");
out.print("<td>"+rs.getString(25)+"</td></tr>");
}
out.print("</table>");
rs.close();
ps.close();
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
