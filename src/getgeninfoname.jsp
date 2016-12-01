<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");

PreparedStatement ps=con.prepareStatement("select * from student2 where id='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<form action='save1.jsp' name='myform' id='myform'>");
out.print("<table cellspacing=15 cellpadding=15>");
while(rs.next()){
out.print("<tr><td><font style='color:navy'><B>Student Details:</B></font></td></tr>");
out.print("<tr><td><B>ID:</B></td><td><input type='text' name='id' value='"+rs.getString(1)+"'></input></td></tr>");
out.print("<tr><td><B>First Name:</B></td><td><input type='text' name='fname' value='"+rs.getString(2)+"'></input></td></tr>");
out.print("<tr><td><B>Last Name:</B></td><td><input type='text' name='lname' value='"+rs.getString(3)+"'></input></td></tr>");
out.print("<tr><td><B>Father Name:</B></td><td><input type='text' name='faname' value='"+rs.getString(4)+"'></input></td></tr>");
out.print("<tr><td><B>Mother Name:</B></td><td><input type='text' name='mname' value='"+rs.getString(5)+"'></input></td></tr>");
out.print("<tr><td><B>DateofBirth: </B></td><td><input type='text' name='dateofbirth' value='"+rs.getString(6)+"'></input></td></tr>");
out.print("<tr><td><B>DateofJoining:</B></td><td><input type='text' name='dateofjoining' value='"+rs.getString(7)+"'></input></td></tr>");
out.print("<tr><td><B>Batch:</B></td><td><input type='text' name='batch' value='"+rs.getString(8)+"'></input></td></tr>");
out.print("<tr><td><B>Branch:</B></td><td><input type='text' name='branch' value='"+rs.getString(26)+"'></input></td></tr>");
out.print("<tr><td><B>Course</B></td><td><input type='text' name='course' value='"+rs.getString(9)+"'></input></td></tr>");
out.print("<tr><td><B>Mobile:</B></td><td><input type='text' name='mobile' value='"+rs.getString(10)+"'></input></td></tr>");
out.print("<tr><td><B>Land Phone:</B></td><td><input type='text' name='lphone' value='"+rs.getString(11)+"'></input></td></tr>");
out.print("<tr><td><B>Address:</B></td><td><input type='text' name='address' value='"+rs.getString(12)+"'></input></td></tr>");
out.print("<tr><td><B>First year fees:</B></td><td><input type='text' name='fyf' value='"+rs.getString(13)+"'></input></td></tr>");
out.print("<tr><td><B>First Year fees paid</B></td><td><input type='text' name='fyfp' value='"+rs.getString(14)+"'></input></td></tr>");
out.print("<tr><td><B>First Year fees Balance:</B></td><td><input type='text' name='fyfb' value='"+rs.getString(15)+"'></input></td></tr>");
out.print("<tr><td><B>Second year fees:</B></td><td><input type='text' name='syf' value='"+rs.getString(16)+"'></input></td></tr>");
out.print("<tr><td><B>Second Year fees paid</B></td><td><input type='text' name='syfp' value='"+rs.getString(17)+"'></input></td></tr>");
out.print("<tr><td><B>Second Year fees Balance:</B></td><td><input type='text' name='syfb' value='"+rs.getString(18)+"'></input></td></tr>");
out.print("<tr><td><B>Third year fees:</B></td><td><input type='text' name='tyf' value='"+rs.getString(19)+"'></input></td></tr>");
out.print("<tr><td><B>Third Year fees paid</B></td><td><input type='text' name='tyfp' value='"+rs.getString(20)+"'></input></td></tr>");
out.print("<tr><td><B>Third Year fees Balance:</B></td><td><input type='text' name='tyfb' value='"+rs.getString(21)+"'></input></td></tr>");
out.print("<tr><td><B>Fourth year fees:</B></td><td><input type='text' name='lyf' value='"+rs.getString(22)+"'></input></td></tr>");
out.print("<tr><td><B>Fouth Year fees paid</B></td><td><input type='text' name='lyfp' value='"+rs.getString(23)+"'></input></td></tr>");
out.print("<tr><td><B>Fourth Year fees Balance:</B></td><td><input type='text' name='lyfb' value='"+rs.getString(24)+"'></input></td></tr>");
out.print("<tr><td><B>Net Balance:</B></td><td><input type='text' name='nb' value='"+rs.getString(25)+"'></input></td></tr>");
out.print("<tr><td></td><td><input style='padding:3px 3px' value='Edit & Save' type='submit'></td></tr>");
out.print("</form>");
}
rs.close();
ps.close();
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>


