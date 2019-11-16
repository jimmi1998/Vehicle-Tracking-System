<%-- 
    Document   : JSP1
    Created on : 20 Apr, 2016, 8:13:12 PM
    Author     : rajajay
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.util.Date;"%>
<!DOCTYPE html>
<html>
<body>

	<%! Connection con=null; Statement st=null; ResultSet rs=null; ResultSet rs1=null; ResultSet rs2=null; 
		%></%!>

	<% int i=0; String d=""; 	
	  try{
	String url = "jdbc:mysql://localhost/VSEARCH";
	String name = "root";
	String pass = "";
	 Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(url, name, pass);
	String cmd= "select rno from rvehicles where VNO=";
	   request.getParameter("vno")+"";

	st=con.createStatement();
	//String cmd1="select * from rvehicles";
	rs=st.executeQuery(cmd);
	//rs2=st.executeQuery(cmd1);
	int count=0;

	if(!rs.next())
	{

	//cmd="select rnoseq.nextval from dual";
	//rs1=st.executeQuery(cmd);
	//if(rs1.next())

	String thisvno = request.getParameter("vno");
	int thiswh = Integer.parseInt( request.getParameter("wheels") );
	String thismodel = request.getParameter("model");
	String thisrtono =request.getParameter("rtono");
	String thisoname=request.getParameter("oname");
	String thisemail=request.getParameter("email");
	int  thisphone=Float.parseFloat( request.getParameter("phone"));
	String thisaddr=request.getParameter("addr");

	java.util.Date date=new java.util.Date();
	cmd = "insert into rvehicles(vno,wheels,vtype,rtono,oname,"
				+ "email,phone,ownadd)  values('"+thisvno+"',"+thiswh+
				",'"+thismodel+"','"+thisrtono+"','"+thisoname+
				"','"+thisemail+"',"+thisphone+",'"+thisaddr+
				  "')" ;

	st.execute(cmd);
	String cmd1="select * from rvehicles where vno='"+thisvno+"'";
	rs2=st.executeQuery(cmd1);
	while(rs2.next())
	count=rs2.getInt(1);
	 %></%>
	<h3> Registration Successful </h3>
	<h4> Remember the following registration number for future 
	reference </h4> 
		<font size=5 color=red> 
			<%=  count %></%>
	<p><hr>
			<%@ include file="home.html"  %></%@> 
	<%
	}else
	{
	String s=rs.getString(1); %>
	<h2> The vehicle is already registered with the number
		<%= s %> </%>
	<font size=5 color=red> Enter correct vehicle number.
		<%@ include file="newreg.html" %></%@>
	<% 
	}
	}

	   catch(Exception e)
	{
	e.printStackTrace(); 
	out.println(" "+e); } %></%>

		

		</font></h2></%></font>
</body>
</html>