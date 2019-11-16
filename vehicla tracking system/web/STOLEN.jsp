<%-- 
    Document   : STOLEN
    Created on : 21 Apr, 2016, 12:13:08 AM
    Author     : rajajay
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><title> CARD project </title> 
 <body>
<%@ page import = "java.sql.*" %>
<%! Connection con; Statement st; ResultSet rs,rs1; %>
<%
try{
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/VSEARCH";
String name = "root";
String pass = "";
 Class.forName( driver );
                con = DriverManager.getConnection( url, name, pass );
String cmd = "select vno,email from rvehicles where rno='"+
             Integer.parseInt( request.getParameter("rno")) +"'";
st=con.createStatement();
rs=st.executeQuery(cmd);
if(!rs.next())
{%>
<h2> Wrong Registraton Number. Retype <h2>
<%@ include file="stolen.html" %>
<%
} else
{
String myvno = rs.getString(1); 
String mymail = rs.getString(2);
String[] mon={"JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC" };
String monval=mon[Integer.parseInt(request.getParameter("month"))-1];

String dst = "'"+request.getParameter("year")
             +"-"+monval+
                "-"+request.getParameter("day")+"'";

cmd = "insert into stolenlist values("+request.getParameter("rno")+",'"
         +myvno+"',"+dst+")";
st.executeUpdate(cmd); 
%>
<font size=5 color=red>
	Your vehicle registered in 'stolen vehicles' database. When information about it is available we will inform you to the following email address <br><center><u> <%= mymail %> </%></u></center>
You can also check the whereabouts from  <a href="trace.html"> here</a><hr>
<%@ include file="home.html" %>
<% 
 }
}catch(Exception e)
{
e.printStackTrace();
out.println(e);
}
   %></%></%@></font></%></%@></h2></h2></%></%!></%@></body>
</html>
