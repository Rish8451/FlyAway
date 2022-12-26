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
	<%
	String SOURCE = request.getParameter("source");
	String DESTINATION = request.getParameter("destination");
	String person = request.getParameter("person");
	session.setAttribute("person", person);
	session.setAttribute("source", SOURCE);
	session.setAttribute("destination", DESTINATION);
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/flyaway";
	String user = "root";
	String pass = "Lucifer@16";
	String sql = "select * from flights where source='" + SOURCE + "'and destination='" + DESTINATION + "'";
	Connection con = DriverManager.getConnection(url, user, pass);
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	%>
	<form action="customerdetails.jsp" method="post">
		<div class="container shadow-lg p-3 mx-auto mt-5 ">
			<div class="d-flex justify-content-center p-3">
				<h1>Available Flights :</h1>
			</div>
			<div class="d-flex justify-content-center p-3">
				<tr>
					<td>No of Persons :</td>
					<td>
						<%
						out.println(person);
						%>
					</td>
				</tr>
			</div>
			<table class="table table-strip table-light">
				<tr>
					<th>name</th>
					<th>airline</th>
					<th>way</th>
					<th>price</th>
					<th>source</th>
					<th>destination</th>
					<th>Action</th>
				</tr>
				<%
				while (rs.next()) {
				%>
				<tr>
						<%					
						String name = rs.getString(1);
						String airline = rs.getString(2);
						String way = rs.getString(3);
						String price = rs.getString(4);
						String source = rs.getString(5);
						String destination = rs.getString(6);					
						
						out.println("<td>"+ name +"</td>");
						out.println("<td>"+ airline +"</td>");
						out.println("<td>"+ way +"</td>");
						out.println("<td>"+ price +"</td>");
						out.println("<td>"+ source +"</td>");
						out.println("<td>"+ destination +"</td>");
						
						session.setAttribute("name", name);
						session.setAttribute("airline", airline);
						session.setAttribute("way", way);
						session.setAttribute("price", price);
						session.setAttribute("tsource", source);
						session.setAttribute("tdestination", destination);

						%>
				   <td>
					<input class="btn btn-success float-start" type="submit"
					value="Book Ticket">
					</td>
				</tr>
				<%
				}
				%>
			</table>
			<div class="d-flex justify-content-center p-3">
				<input class="btn btn-danger float-end" type="button"
					onclick="login.jsp" value="Admin Login"> 			
			</div>
	</form>
	</div>
</body>