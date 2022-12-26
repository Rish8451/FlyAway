<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


</head>
<body>

	<%
	String SOURCE = (String) request.getParameter("source");
	String DESTINATION = (String) request.getParameter("destination");
	session.setAttribute("source", SOURCE);
	session.setAttribute("destination", DESTINATION);
	%>

	<div class="container shadow-lg p-3 mx-auto mt-5 ">
		<div class="d-flex justify-content-center p-3">
			<h1>Enter Details of Customers</h1>
		</div>
		<form action="showdetails.jsp" method="post">
			<%
			int person = Integer.parseInt((String) session.getAttribute("person"));
			for (int i = 1; i <= person; i++) {
			%>
			<table class="table table-striped table-light">
				<tr>
					<td colspan="2">Passenger <%=i%>
					</td>
				</tr>
				<tr>
					<td>Passenger Name :</td>
					<td><input type="text" name="name" required> </br> </br></td>
				</tr>
				<tr>
					<td>Aadhar UID :</td>
					<td><input type="number" name="uid" required> </br> </br></td>
				</tr>
				<tr>
					<td>Phone Number :</td>
					<td><input type="number" name="phone" required> </br> </br></td>
				</tr>
				<tr>
					<td>Age :</td>
					<td><input type="number" name="age" required</td>
				</tr>
			</table>
			</br>

			<%
			}
			%>
			<div class="d-flex justify-content-center p-3">

				<input class=" btn btn-success" type="submit" value="Book Ticket">
			</div>
		</form>

	</div>



</body>
</html>