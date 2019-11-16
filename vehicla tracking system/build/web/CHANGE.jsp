<%-- 
    Document   : CHANGE
    Created on : 21 Apr, 2016, 12:14:27 AM
    Author     : rajajay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><title>Change is Owners' details </title >
 
<%@ page import = "java.sql.*" %>
<%! Connection con; Statement st; ResultSet rs; %>
<%
try{
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/VSEARCH";
String name = "root";
String pass = "";
 Class.forName( driver );
                con = DriverManager.getConnection( url, name, pass );
String cmd = "Select oname,email,phone,ownadd  from rvehicles where rno=" +request.getParameter("rno");
st=con.createStatement();
rs=st.executeQuery(cmd);
if(rs.next())
{ %>
<script language="javascript">
function check()
{
if(document.form1.oname.value=="")
{
alert("Owner name should be entered!");
document.form1.oname.focus();
return;
}
if(document.form1.email.value=="")
{
alert("E-mail should be entered!");
document.form1.email.focus();
return;
}
if(document.form1.phone.value=="")
{
alert("Owners phone number should be entered!");
document.form1.phone.focus();
return;
}
if(document.form1.addr.value=="")
{
alert("Owners address should be entered!");
document.form1.addr.focus();
return;
}

document.form1.submit();

}
</script>
<body>
<form name=form1 method=post  action="UPDATE.jsp">
<center><h1> Vehicle Investigation System </h1> 
<font color=red>
<h3>Change necessary Details </h3>
<font size=4 color=Blue> <table>
<tr><td>Owner Name : 
<td> <input type=text name=oname value="<%= rs.getString(1) %>">
<tr> <td> E-mail     : 
<td> <input type=text name=email value="<%= rs.getString(2) %>">
<tr> <td>Phone      : 
<td> <input type=text name=phone value="<%= rs.getInt(3) %>"> 
<tr> <td>Address    : 
<td><input type=text name=addr value="<%= rs.getString(4) %>">
	</tr></td></tr></td></tr></td></table>
<input type=hidden name=myrno 
value="<%= request.getParameter("rno") %>">
<input type=button value=" Go " onClick="check()">
	</font></font></center></form>

<%
 
} else {
%> <center><font color=red><center>
<h3> Invalid Register Number! Retype </h3> </center> </font>
<%@ include file="change.html" %>
<%
}

}catch(Exception e)
{ e.printStackTrace(); }

%>



	</%></%@></center></%>
</body>
	</%></%!></%@>
</html>
