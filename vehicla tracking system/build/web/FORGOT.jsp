<%-- 
    Document   : FORGOT
    Created on : 21 Apr, 2016, 12:17:07 AM
    Author     : rajajay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><title>Forgot password?</title>
<%@ page import="java.sql.*" %>
<%! Connection con; Statement st; ResultSet rs; %>
<%
try{
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/VSEARCH";
String name = "root";
String pass = "";
 Class.forName( driver );
                con = DriverManager.getConnection( url, name, pass );
String cmd = "select rno from rvehicles where vno='"+ request.getParameter("vno")+"'";
st=con.createStatement();
rs=st.executeQuery(cmd);
if(rs.next())
{
%>
	<h2>Your Register number is : <%= rs.getInt(1) %> </%></h2>
<br><hr> <%@ include file="home.html" %>
<%
}
else{
%>
<h2>No vehicle registered with this number!</h2>
<h3>Type correct Vehicle number</h3>
<br><hr> <%@ include file="forgot.html" %>
<%
}
}
catch(Exception e)
{
e.printStackTrace();
out.println(e);
}
   %></%></%@></%></%@></%></%!></%@></html></%@page></%-->



