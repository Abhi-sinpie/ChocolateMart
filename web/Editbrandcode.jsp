<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Brand</title>
        <link rel="stylesheet" href="Alogin.css" />
    </head>
<body>
    <form  action="Editbrandcode1.jsp">
<%
        int count=0;

int s=Integer.parseInt(request.getParameter("bid"));
   Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con1=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab"); 
        Statement st1=con1.createStatement();
        ResultSet rs1=st1.executeQuery("select * from brand where bid="+s);
        while(rs1.next())
              {
            count=1;   
           }
try
    {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab"); 
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from brand where bid="+s);
                if (count==1)   
            {
          while(rs.next())
           {
             out.print("<div class=box><h2>Brand</h2><div class=inputBox><input type=number name=txt1 value="+ rs.getInt(1)+"><label>Product Id</label></div>");
             out.print("<div class=inputBox><input type=text name=txt2 value="+ rs.getString(2)+"><label>Chocolate Name</label></div>");
             out.print("<div class=inputBox2><input type=submit value=Edit center class=btn btn-submit></center></div>");   
           }  
            }
    
else
{

    out.print(" <section class=services id=services><div class=services-container><div class=box><div class=box>");
out.print("<center><b style=color:red;font-size:30px;>Invalid Brand Id</b><br><br><br><br>");
out.print("<a href=Editbrand.jsp><b style=font-size:20px;>Return</a>");
      out.print("</div></div></div> </section>");
        }
}catch(Exception e){}
%>
    </form>
</body>
</html>