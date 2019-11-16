<%-- 
    Document   : SECONDS
    Created on : 21 Apr, 2016, 12:18:08 AM
    Author     : rajajay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> <title> Checking Second-hand vehicle status </title>
<%@ page import ="java.sql.*" %>
<%! Connection con; ResultSet rs; Statement st; %>
<%
try{
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/VSEARCH";
String name = "root";
String pass = "";
 Class.forName( driver );
                con = DriverManager.getConnection( url, name, pass );
String cmd="select rno from stolenlist where vno='"+ request.getParameter("vno")+"'";
st=con.createStatement();
rs=st.executeQuery(cmd);
if(rs.next())
{
//int i=rs.getInt(1);
//Sout.println(i);
cmd = "insert into foundlist values('"+rs.getInt(1)+"','"+
request.getParameter("vno")+"','"+
request.getParameter("wheels")+"','"+
request.getParameter("model")+"','"+
request.getParameter("oname")+"','"+
request.getParameter("addr")+"','"+
request.getParameter("email")+"','"+
request.getParameter("phone")+"','"+
request.getParameter("uname")+"','"+
request.getParameter("uaddr")+"','"+
request.getParameter("uemail")+"','"+
request.getParameter("uphone")+"')";
st.execute(cmd);
    
out.println("<font size=4 color=red><center>");
out.println("Vehicle found in 'stolen vehicles' list! ");
out.println("Do not purchase this vehicle</font>");
out.println("<hr>");
%>
<%@ include file="home.html" %>
<%
}
else
{
out.println("<center><font size=4 color=Magenta>");
out.println("No complaint against the vehicle is registered!");
out.println("<br>Vehicle may be purchased");
out.println("<br>To avail benefits of this site ");
out.println("register the vehicle after purchase ");
out.println("</font></center>");
%>
<%@ include file="home.html" %>
<%
}
}catch(Exception e)
{
e.printStackTrace();
out.println(e);

}
   %></%></%@></%></%@></%></%!></%@></html></%@page></%-->