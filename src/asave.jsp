<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
String dateofbirth=request.getParameter("dob");
String dateofjoining=request.getParameter("doj");
String salary=request.getParameter("salary");
String address=request.getParameter("address");
String phone=request.getParameter("phone");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");
PreparedStatement ps=con.prepareStatement("insert into payregister(firstname,lastname,username,userpass,dateofjoining,dateofbirth,address,phone,salary) values(?,?,?,?,?,?,?,?,?)");


ps.setString(1,firstname);
ps.setString(2,lastname);
ps.setString(3,username);
ps.setString(4,userpass);
ps.setString(5,dateofjoining);
ps.setString(6,dateofbirth);
ps.setString(7,address);
ps.setString(8,phone);
ps.setString(9,salary);

int s=ps.executeUpdate();
//System.out.print(s);
ps.close();
con.close();
request.setAttribute("msg","Accountant record created succesfully !");
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
