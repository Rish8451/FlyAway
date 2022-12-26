<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
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
	<div class="container shadow-lg p-3 mx-auto mt-5 ">
		<div class="d-flex justify-content-center p-3">
			<h1>FlyAway</h1>

		</div>
		<form action="search.jsp" method="post">
			<div class="d-flex justify-content-center p-3">
				<datalist id="source">
					<%
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/flyaway";
					String user = "root";
					String pass = "Lucifer@16";
					String sql = "select name from places order by name";
					Connection con = DriverManager.getConnection(url, user, pass);
					ResultSet rs = con.createStatement().executeQuery(sql);
					while (rs.next()) {
						String source = rs.getString("name");
					%>
					<option value="<%=source%>" />
					<%
					}
					%>
				</datalist>

				<table class="table table-striped table-light">
					<tr>
						<td>Travel Date</td>
						<td><input type="date" id="traveldate" name="traveldate"
							placeholder="dd/mm/yyyy" required></td>
					</tr>

					<tr>
						<td>Source</td>
						<td><input type="text" name="source" list="source" required />
						</td>
					</tr>
					<tr>
						<td>Destination</td>
						<td><input type="text" name="destination" list="source"
							required /></td>
					</tr>

					<tr>
						<td>No of Persons</td>
						<td><input type="number" name="person" required>
						</td>
					</tr>
				</table>
				
			</div>
			<div class="d-flex justify-content-center p-3">
					<input class="btn btn-success" type="submit" value="show available flights"> 
				</div>
			
		</form>

		<div class="d-flex justify-content-center p-3">

			<form action="login.jsp" method="post">
				<input class="btn btn-danger" type="submit" value="Admin Login">
			</form>

		</div>

	</div>

</body>
</html>
