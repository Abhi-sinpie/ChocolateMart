<%@page contentType="text/html" pageEncoding="UTF-8"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Resister</title>
         <link rel="stylesheet" href="Alogin.css">
    </head>
  <body>
       <%
       String a=request.getParameter("username");
       String b=request.getParameter("email");
       String c=request.getParameter("address");
       String d=request.getParameter("mob");
       String e=request.getParameter("password");
       String f=request.getParameter("password2");
       int x=d.length();
           if (x==10){
       if(e.equals(f))
       {
       try
       {
       
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
       PreparedStatement ps=con.prepareStatement("insert into ures values(?,?,?,?,?,?)");
         ps.setString(1, a);
         ps.setString(2, b);
         ps.setString(3, c);
         ps.setString(4, d);
         ps.setString(5, e);
         ps.setString(6, f);
         ps.executeUpdate();
         con.close();
         }catch(Exception msg)
         {;
          }
      response.sendRedirect("Ulogin.jsp");
}
       else{
           out.print("<div class=box><h2>password and confirm  are not match</h2>");        
           out.print("<center><form action=Ures.jsp><div class=inputBox2><input type=submit value=Return center class=btn btn-submit></form></div></center>");
       }
           }
        else{
           out.print("<div class=box><h2>Invalid Mob number</h2>");        
           out.print("<center><form action=Ures.jsp><div class=inputBox2><input type=submit value=Return center class=btn btn-submit></form></div></center>");
       }   
       %>
  </body>
</html>
