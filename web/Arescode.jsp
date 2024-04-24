<%@page contentType="text/html" pageEncoding="UTF-8"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin resister</title>
        <link rel="stylesheet" href="Alogin.css" />
    </head>
<body>
       <%
       String a=request.getParameter("username");
       String b=request.getParameter("email");
       String c=request.getParameter("mob");
       String d=request.getParameter("password");
       String e=request.getParameter("password2");
       int x=c.length();
           if (x==10){
       if(d.equals(e))
       {
       try
       {  
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
       PreparedStatement ps=con.prepareStatement("insert into ares values(?,?,?,?,?)");
       ps.setString(1, a);
       ps.setString(2, b);
       ps.setString(3, c);
       ps.setString(4, d);
       ps.setString(5, e);
       ps.executeUpdate();
       con.close();
       }catch(Exception msg)
         {;
          }
        response.sendRedirect("Alogin.jsp");
       }
      else
       {
          out.print("<div class=box><h2>password and confirm  are not match</h2>");        
          out.print("<center><form action=Ares.jsp><div class=inputBox2><input type=submit value=Return center class=btn btn-submit></form></div></center>");
       }
    }
           else
    {
out.print("<div class=box><h2>Invalid mob number</h2>");        
          out.print("<center><form action=Ares.jsp><div class=inputBox2><input type=submit value=Return center class=btn btn-submit></form></div></center>");
       
}
%>
</body>
</html>