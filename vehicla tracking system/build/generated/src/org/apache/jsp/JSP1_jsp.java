package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.sql.*;
import java.util.Date;;

public final class JSP1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con; Statement st; ResultSet rs,rs1,rs2; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/home.html");
    _jspx_dependants.add("/newreg.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write('\n');

int i=0; String d="";
  try{
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/VSEARCH";
String name = "root";
String pass = "";
 Class.forName( driver );
                con = DriverManager.getConnection( url, name, pass );
String cmd= "select RNO from rvehicles where VNO='"+
             request.getParameter("vno")+"'";

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
count=rs.getInt("RNO");
String thisvno = request.getParameter("vno");
int thiswh = Integer.parseInt( request.getParameter("wheels") );
String thismodel = request.getParameter("model");
String thisrtono =request.getParameter("rtono");
String thisoname=request.getParameter("oname");
String thisemail=request.getParameter("email");
int  thisphone=Integer.parseInt( request.getParameter("phone"));
String thisaddr=request.getParameter("addr");
java.util.Date date=new java.util.Date();
cmd = "insert into rvehicles(vno,wheels,vtype,rtono,oname,"
            + "email,phone,ownadd)  values('"+thisvno+"',"+thiswh+
            ",'"+thismodel+"','"+thisrtono+"','"+thisoname+
            "','"+thisemail+"',"+thisphone+",'"+thisaddr+
              "')" ;
st.execute(cmd);

      out.write("\n");
      out.write("<h3> Registration Successful </h3>\n");
      out.write("<h4> Remember the following registration number for future \n");
      out.write("reference </h4> <font size=5 color=red> \n");
      out.print(  count );
      out.write("\n");
      out.write("<p><hr>\n");
      out.write("<html>\r\n");
      out.write("<Title> CARD project - Vehicles Department </title>\r\n");
      out.write("</title>\r\n");
      out.write("<body vlink=blue alink=blue link=blue>\r\n");
      out.write("<center> <font color=BLUE> <h1> Welcome to Vehicle Investigation System </h1> <hr> </center>\r\n");
      out.write("<font color=red size=5>\r\n");
      out.write("<TT>\r\n");
      out.write("What you want to do now? <p>\r\n");
      out.write("<a href=\"newreg.html\">\r\n");
      out.write("New Vehicle Registration</a>  <br>\r\n");
      out.write("<a href=\"stolen.html\">\r\n");
      out.write("Vehicle Stolen ? Register complaint </a> <br>\r\n");
      out.write("<a href=\"trace.html\">\r\n");
      out.write("Trace status of stolen vehicle  </a> <br>\r\n");
      out.write("<a href=\"seconds.html\">\r\n");
      out.write("Buying Second-hand vehicles ? Check status  </a><br>\r\n");
      out.write("<a href=\"change.html\">\r\n");
      out.write("Change Owner's details ? </a> <br>\r\n");
      out.write("<hr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(' ');
      out.write('\n');

}else
{
String s=rs.getString(1); 
      out.write("\n");
      out.write("<h2> The vehicle is already registered with the number\n");
      out.print( s );
      out.write(" .</h2>\n");
      out.write("<font size=5 color=red> Enter correct vehicle number.\n");
      out.write("<html>\r\n");
      out.write("<title> CARD Project - New Vehicle Registration</title> \r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\r\n");
      out.write("//document.form1.vno.focus();\r\n");
      out.write("\r\n");
      out.write("function check()\r\n");
      out.write("{\r\n");
      out.write("if(document.form1.vno.value==\"\") \r\n");
      out.write("{ alert(\"Vehicle number should be furnished\");\r\n");
      out.write("  document.form1.vno.focus(); \r\n");
      out.write("return;\r\n");
      out.write("}\r\n");
      out.write("if(document.form1.model.value==\"\") \r\n");
      out.write("{ alert(\"Vehicle model should be furnished\");\r\n");
      out.write(" document.form1.model.focus();\r\n");
      out.write("return; }\r\n");
      out.write("\r\n");
      out.write("if(document.form1.oname.value==\"\") \r\n");
      out.write("{  alert(\"Owner name should be furnished\");\r\n");
      out.write("   document.form1.oname.focus(); \r\n");
      out.write("return;}\r\n");
      out.write("\r\n");
      out.write("if(document.form1.email.value==\"\") \r\n");
      out.write("{   alert(\"Owners email not furnished ! \");\r\n");
      out.write("    document.form1.email.focus(); \r\n");
      out.write("   return;}\r\n");
      out.write("if(document.form1.phone.value==\"\") \r\n");
      out.write("{   alert(\"Phone number missing! \");\r\n");
      out.write("    document.form1.phone.focus(); \r\n");
      out.write("         return; }\r\n");
      out.write("if(document.form1.rtono.value==\"\") \r\n");
      out.write("{ alert(\"Vehicle RTO number not mentioned \");\r\n");
      out.write("document.form1.rtono.focus(); \r\n");
      out.write("return; }\r\n");
      out.write("\r\n");
      out.write("if(isNaN(document.form1.phone.value))\r\n");
      out.write("{\r\n");
      out.write("alert(\"Invalid phone number. Remove extra characters\");\r\n");
      out.write("document.form1.phone.focus();\r\n");
      out.write("return;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("mail=document.form1.email.value;\r\n");
      out.write("for(i=0;i<mail.length;i++)\r\n");
      out.write("{\r\n");
      out.write("if(mail.charAt(i)=='@')\r\n");
      out.write("{\r\n");
      out.write("m1=mail.substring(0,i);\r\n");
      out.write("m2=mail.substring(i+1,mail.length);\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("for(i=0;i<m1.length;i++)\r\n");
      out.write("{\r\n");
      out.write("if((m1.charAt(i)=='.')||(m1.charAt(i)==' '))\r\n");
      out.write("{\r\n");
      out.write("alert(\"Wrong e-mail id. Retype\");\r\n");
      out.write("return;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("for(i=0;i<m2.length;i++)\r\n");
      out.write("{\r\n");
      out.write("if((m2.charAt(i)==' ')||(m2.charAt(i)=='@'))\r\n");
      out.write("{\r\n");
      out.write("alert(\"Wrong e-mail id. Retype\");\r\n");
      out.write("return;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("document.form1.submit();\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<center> <font color = BLUE >\r\n");
      out.write("<h1>New Vehicle Registration Form </h1><hr>\r\n");
      out.write("</center></font>\r\n");
      out.write("<form name=form1 action=\"JSP1.jsp\"  method=post>\r\n");
      out.write("<table>\r\n");
      out.write("<tr> <td> <font color=red size=5>\r\n");
      out.write("Enter Vehicle Details: </td> <td></td> </tr>\r\n");
      out.write("<tr>   <td> Vehicle Number </td>\r\n");
      out.write("       <td> <input type=text name=vno> </td>\r\n");
      out.write("<tr>   <td> Number of wheels </td>\r\n");
      out.write("       <td> <select name=wheels > <option>2 <option>3\r\n");
      out.write("            <option>4 <option>6  </select > </td>\r\n");
      out.write("<tr>   <td> Vehicle type/model </td>\r\n");
      out.write("       <td> <input type = text name=model> </td>\r\n");
      out.write("<tr>   <td> RTO number </td> \r\n");
      out.write("       <td> <input type=text name=rtono></td> </tr>\r\n");
      out.write("<tr> <td> <font color=red size=5>\r\n");
      out.write(" Enter Owners Details: </td> <td></td> </tr>\r\n");
      out.write("<tr>  <td> Owner's Name </td>\r\n");
      out.write("       <td> <input type=text name=oname> </td>\r\n");
      out.write("<tr>   <td> Owner's E-mail id </td>\r\n");
      out.write("       <td> <input type=text name=email> </td>\r\n");
      out.write("<tr> <td> Owner's Phone number </td>\r\n");
      out.write("      <td> <input type=text name=phone> </td>\r\n");
      out.write("<tr> <td> Owner's address </td>\r\n");
      out.write("       <td> <textarea cols=25 rows=8 name=addr> </textarea></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table><p>\r\n");
      out.write("<center> \r\n");
      out.write("<input type=button Value=\"Register\" onClick=\"check()\">\r\n");
      out.write("<input type=Reset>\r\n");
      out.write("</form>\r\n");
      out.write("<br>\r\n");
      out.write("\r\n");
      out.write('\n');
 
}
}catch(Exception e)
{
e.printStackTrace(); 
out.println(" "+e);

} 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
