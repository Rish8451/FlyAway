<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
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
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/flyaway";
	String user = "root";
	String pass = "Lucifer@16";
	String sql = "select * from places order by name";
	Connection con = DriverManager.getConnection(url, user, pass);
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	%>
	<table class="table table-striped table-light">
		<tr>
			<th colspan="4">
				<div class="d-flex justify-content-center p-3">
					<h1>AirLines List :</h1>
				</div>

			</th>
		</tr>

		<tr>
			<th>code</th>
			<th>name</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>

		</tr>
		<%
		}
		%>
	</table>
</body>