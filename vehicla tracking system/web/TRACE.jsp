<%-- 
    Document   : TRACE
    Created on : 21 Apr, 2016, 12:19:12 AM
    Author     : rajajay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><title>Tracing stolen vehicle</title>
<%@ page import = "java.sql.*" %>
<%! Connection con; ResultSet rs; Statement st;  %>
<%
try
{
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/VSEARCH";
String name = "root";
String pass = "";
 Class.forName( driver );
                con = DriverManager.getConnection( url, name, pass );
String cmd = "select * from foundlist where rno="+ request.getParameter("rno");
st=con.createStatement();
rs=st.executeQuery(cmd);
if(rs.next())
{
out.println("<font color=red size=4><center>");
out.println("Whereabouts of the vehicle can be");
out.println("obtained from the following addresses :<br>");
out.println("<u>First Address</u> : <br>");
out.println("<br>Name : "+rs.getString(5));
out.println("<br>Address:"+rs.getString(6));
out.println("<br>E-mail:"+ rs.getString(7));
out.println("<br>Phone:"+rs.getString(8));
out.println("<br><u>Second address</u>: <br>");
out.println("<br>Name:"+rs.getString(9));
out.println("<br>Address:"+rs.getString(10));
out.println("<br>E-mail:"+rs.getString(11));
out.println("<br>Phone:"+rs.getString(12));
out.println("</font></center><hr>");
%> <%@ include file="home.html" %> <%

}
else
{
out.println("<font size=4 color=Magenta><center>");
out.println("Vehicle still not traced.<br></center> <hr>");
%>
<%@ include file="home.html" %>
<%
}

}
catch(Exception e)
{
e.printStackTrace();
out.println(e);
}
%>
	</%></%@></%></%@></%></%!></%@></html></%@page></%-->