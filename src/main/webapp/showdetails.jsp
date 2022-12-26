<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Flight</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous">
	
</script>
</head>

<body>
	<div class="container shadow-lg p-3 mx-auto mt-5 ">

		<%
		String source = (String) session.getAttribute("tsource");
		String destination = (String) session.getAttribute("tdestination");
		int person = Integer.parseInt((String) session.getAttribute("person"));
		String name = (String) session.getAttribute("name");
		String airline = (String) session.getAttribute("airline");
		String way = (String) session.getAttribute("way");
		String price = (String) session.getAttribute("price");
		%>
		<h1>Your Flight Details :</h1>
		<table class="table table-striped table-light">
			<tr>
				<th>Flight name</th>
				<th>airline</th>
				<th>way</th>
				<th>price</th>
				<th>source</th>
				<th>destination</th>
				<th>Time</th>
			</tr>
			<%
			out.println("<td>" + name + "</td>");
			out.println("<td>" + airline + "</td>");
			out.println("<td>" + way + "</td>");
			out.println("<td>" + price + "</td>");
			out.println("<td>" + source + "</td>");
			out.println("<td>" + destination + "</td>");
			out.println("<td>" + destination + "</td>");
			%>
		</table>

		<form action="payment.jsp" method="post">
			No of Persons :
			<%
		out.println(person);
		%>
			</br> </br>

			<h1>Payment Details :</h1>
			<table class="table table-striped table-light">
				<tr>
					<td>Debit card Number :</td>
					<td><input type="number" name="cardno" required></td>
				</tr>
				</br>
				<tr>
					<td>Expiry Date :</td>
					<td><input type="text" name="expiredate" required></td>
				</tr>
				</br>
				<tr>
					<td>CVV :</td>
					<td><input type="number" name="cvv" required></td>
				</tr>
			</table>
			</br>
			<div class="d-flex justify-content-center p-3">
				<input class="btn btn-success" type="submit" value="submit"></br>
			</div>
			</br>
		</form>
	</div>

</body>
</html>
