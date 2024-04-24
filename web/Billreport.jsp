<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
    
	<meta charset="UTF-8">
	<title>Sell Report</title>
        
	
        <link rel="stylesheet" href="Alogin.css">
  <link rel="stylesheet" href="Ahome.css">
  <link rel="stylesheet" href="display.css">	
  <link rel="stylesheet" 
	 href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!--<link rel="stylesheet" href="Alogin.css" />-->
</head>
<body style="background:white">
    <%
    if(session.getAttribute("uname")==null)
    {
    response.sendRedirect("Alogin.jsp");
    }
    %>
     <header>
		
		<div class="bx bx-menu"id="menu-icon"></div>
		<ul class="navbar">
			<li><a href="adminhome.jsp">Home</a></li>
			<li><a href="oproduct.jsp">Product</a></li>
			<li><a href="obrand.jsp">Brand</a></li>
                        <li><a href="ocustomer.jsp">Customer</a></li>
                        <li><a href="ostock.jsp">Stock</a></li>
                        <li><a href="Adminprofile.jsp">Profile</a></li>
		</ul>
		<div href="#" class="header-btn">
			<a href="alogout.jsp" class="sign-in">Log Out</a>
		</div>
	</header>
    <form method="post">
    <div class="box">
    <div class="inputBox">
                <input type="date" id="fromDate" name="fromDate" required=""/>
                <label>From Date</label>
        </div>
    <div class="inputBox">
                <input type="date" id="toDate" name="toDate" required=""/>
                <label>To Date</label>
    </div>
      
        <div class="inputBox2">
            <!--<button type="submit" value="  Add" center class="btn btn-submit" style="color:white;font: white; " /></center>-->
            <!--<button type="submit" value="Generate Report" style="border-radius:5px;width:80px;height:40px;color:white;background-color:#2691d9;font-size:15px;padding:10px 10px;text-align:center;">-->
            <center> <button type="submit" value="submit" style="background: blue;border-radius:5px;width:80px;height:70px;color: white;font-size:15px;padding:10px 10px;text-align:center;">Generate Report</button>
  </center>      </div>
        </div>
    </form>
<!--	<div class="container">
		<h1>Sell Report</h1>
		<form method="post">
			<div class="form-group">
				<label for="fromDate">From Date:</label>
				<input type="date" class="form-control" id="fromDate" name="fromDate" required>
			</div>
			<div class="form-group">
				<label for="toDate">To Date:</label>
				<input type="date" class="form-control" id="toDate" name="toDate" required>
			</div>
			<button type="submit" class="btn btn-primary">Generate Report</button>
		</form>

		<%
		if(request.getMethod().equals("POST")) {
			String fromDate = request.getParameter("fromDate");
			String toDate = request.getParameter("toDate");

			Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/chocolate","ab","ab");
			PreparedStatement ps = con.prepareStatement("SELECT * FROM bill  WHERE date BETWEEN ? AND ?");
			ps.setString(1, fromDate);
			ps.setString(2, toDate);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				%>
                                -->
                                <div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                                <h1 style="text-align: center;color: #2691d9">Brands Details</h1><br>   
                                <table id="tablecss">
                                <tr>
    <th>Username</th>
    <th>Date</th>
        <th>Product Name</th>
        <th>Total</th>
        
      </tr>			
>
					<tbody>-->
						<%
						do {
							%>
							<tr>
                                                                <td><%= rs.getString("username") %></td>
                                                                <td><%= rs.getDate("date") %></td>
								<td><%= rs.getString("pname") %></td>
								<td><%= rs.getInt("total") %></td>
							</tr>
							<%
						} while(rs.next());
						%>
                                                
                                                <br></table>
				<%
			} else {
				%>
				<p>No data found for the selected dates.</p>
				<%
			}

			rs.close();
			ps.close();
			con.close();
		}
		%>
	</div>

<!--	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
</body>
</html>
</html>
