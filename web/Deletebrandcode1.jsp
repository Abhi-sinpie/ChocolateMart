<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Brand</title>
    </head>
<body>
<%
int a=Integer.parseInt(request.getParameter("txt1"));
String b=request.getParameter("txt2");
  try
    {
     Class.forName("org.apache.derby.jdbc.ClientDriver");
     Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
     PreparedStatement ps=con.prepareStatement("delete from brand where bid=?");
     ps.setInt(1,a);
     ps.executeUpdate();
     con.close();
     response.sendRedirect("Viewbrand.jsp");
    }
    catch(Exception ej){}
%>
</body>
</html>