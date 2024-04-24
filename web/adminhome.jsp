<!DOCTYPE html>
<html>
<head>
	<title>Admin Home</title>
	<link rel="stylesheet" href="Ahome.css">
                <link rel="stylesheet" href="display.css">

	<link rel="stylesheet" 
	 href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
	 
	</head>
<body>
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
                        <li><a href="Adminprofile.jsp">Profile</a></li>
		</ul>
		<div href="#" class="header-btn">
			<a href="alogout.jsp" class="sign-in">Log Out</a>
		</div>
	</header>
	<div>
	<h1 style="text-align: center;color: #2691d9">ADMIN HOME</h1>
	<table id="tablecss">

		<tr >
			<th colspan="2" >OPERATIONS</th>
			
             
		</tr>
		<tr>
			<td >Product</td>
            <td><a href="oproduct.jsp"><b>click here</b></a></td>
		</tr>
		<tr>
			<td>Brand</td>
			
			<td><a href="obrand.jsp"><b>click here</b></a></td>
		<tr>
			<tr>
			<td>Customers</td>
			
             <td><a href="ocustomer.jsp"> <b>click here</b></a></td>
		</tr>
	<tr>
			<td>Stock</td>
			
             <td><a href="ostock.jsp"> <b>click here</b></a></td>
		</tr>
                <tr>
			<td>Bill Report</td>
			
             <td><a href="Billreport.jsp"> <b>click here</b></a></td>
		</tr>
	</table>

</body>
</html>