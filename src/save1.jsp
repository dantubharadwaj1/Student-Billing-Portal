<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
//System.out.print(request.getParameter("name"));
String id=request.getParameter("id");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String faname=request.getParameter("faname");
String mname=request.getParameter("mname");
String dateofbirth=request.getParameter("dateofbirth");
String dateofjoining=request.getParameter("dateofjoining");
String batch=request.getParameter("batch");
String course=request.getParameter("course");
String mobile=request.getParameter("mobile");
String lphone=request.getParameter("lphone");
String address=request.getParameter("address");
String fyf=request.getParameter("fyf");
String fyfp=request.getParameter("fyfp");
String fyfb=request.getParameter("fyfb");
String syf=request.getParameter("syf");
String syfp=request.getParameter("syfp");
String syfb=request.getParameter("syfb");
String tyf=request.getParameter("tyf");
String tyfp=request.getParameter("tyfp");
String tyfb=request.getParameter("tyfb");
String lyf=request.getParameter("lyf");
String lyfp=request.getParameter("lyfp");
String lyfb=request.getParameter("lyfb");
String nb=request.getParameter("nb");
String branch = request.getParameter("branch");

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");
PreparedStatement ps=con.prepareStatement("update student2 set firstname='"+fname+"',lastname='"+lname+"',fathername='"+faname+"',mothername='"+mname+"',dateofbirth='"+dateofbirth+"',dateofjoining='"+dateofjoining+"',batch='"+batch+"',course='"+course+"',mobile='"+mobile+"',homep='"+lphone+"',address='"+address+"',fyf='"+fyf+"',fyfp='"+fyfp+"',fyfb='"+fyfb+"',syf='"+syf+"',syfp ='"+syfp+"',syfb = '"+syfb+"',tyf = '"+tyf+"',tyfp = '"+tyfp+"',tyfb = '"+tyfb+"',lyf = '"+lyf+"',lyfp = '"+lyfp+"',lyfb = '"+lyfb+"',nb = '"+nb+"',branch = '" + branch + "' where id= '"+id+"'");

int s=ps.executeUpdate();
System.out.print(s);
ps.close();
con.close();
request.setAttribute("msg","Student record modified succesfully !");
}catch(SQLException e2){
e2.printStackTrace();
}
%>

<jsp:forward  page="modify.jsp"></jsp:forward>
