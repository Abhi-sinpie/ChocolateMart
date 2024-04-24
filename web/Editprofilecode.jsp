<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Product</title>
    </head>
    <body>
<%
String a=request.getParameter("txt1");
String b=request.getParameter("txt2");
String c=request.getParameter("txt3");
String d=request.getParameter("txt4");
String e=request.getParameter("txt5");
  try
    {
     Class.forName("org.apache.derby.jdbc.ClientDriver");
     Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
     PreparedStatement ps=con.prepareStatement("update ures set email=?,address=?,mobile=?,pass1=?,pass2=? where username=?");
     ps.setString(1,b);
     ps.setString(2,c);
     ps.setString(3,d);
     ps.setString(4,e);
     ps.setString(5,e);
     ps.setString(6,a);
     ps.executeUpdate();
     con.close();
     response.sendRedirect("Userprofile.jsp");
    }
    catch(Exception ej){}
%>
    </body>
</html>