<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Product</title>
        <link rel="stylesheet" href="Alogin.css" />
    </head>
    <body>
    <form  action="Deleteproductcode1.jsp">
<%
    int count=0;
int s=Integer.parseInt(request.getParameter("pid"));
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con1=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab"); 
        Statement st1=con1.createStatement();
        ResultSet rs1=st1.executeQuery("select * from product where pid="+s);
          while(rs1.next())
           {
            count=1;   
           }
             
    

try
    {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab"); 
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from product where pid="+s);
if (count==1)
{
        while(rs.next())
           {
             out.print("<div class=box><h2>Product</h2><div class=inputBox><input type=number name=txt1 value="+ rs.getInt(1)+"><label>Product Id</label></div>");
             out.print("<div class=inputBox><input type=text name=txt2 value="+ rs.getString(2)+"><label>Chocolate Name</label></div>");
             out.print("<div class=inputBox><input type=number name=txt3 value="+ rs.getInt(3)+"><label>Chocolate Brand Id</label></div>");
             out.print("<div class=inputBox><input type=text name=txt4 value="+ rs.getString(4)+"><label>Image</label></div>");
             out.print("<div class=inputBox><input type=number name=txt5 value="+ rs.getInt(5)+"><label>Size</label></div>");
             out.print("<div class=inputBox><input type=number name=txt6 value="+ rs.getInt(6)+"><label>Price</label></div>");
             out.print("<div class=inputBox><input type=number name=txt7 value="+ rs.getInt(7)+"><label>Quantity</label></div>");
             out.print("<div class=inputBox><input type=text name=txt8 style=height:120px; width:322px; value="+ rs.getString(8)+"><label>Description</label></div>");
             out.print("<div class=inputBox2><input type=submit value=Delete center class=btn btn-submit></center></div>");   
           }  
}
else
{

    out.print(" <section class=services id=services><div class=services-container><div class=box><div class=box>");
out.print("<center><b style=color:red;font-size:30px;>Invalid Product Id</b><br><br><br><br>");
out.print("<a href=Deleteproduct.jsp><b style=font-size:20px;>Return</a>");
      out.print("</div></div></div> </section>");
}
    }catch(Exception e){}
%>
    </form>
    </body>
</html>