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
	<div class="container shadow-lg p-3 mx-auto mt-5 ">

		<div class="d-flex justify-content-center p-3">
			<form action="changepassword.jsp" method="post">
				<table class="table table-strip table-light mx-auto ">
					<tr>
						<td colspan="2">
							<div class="d-flex justify-content-center p-3">
								<h1>Change Password</h1>
							</div>
						</td>
					</tr>
					<tr>
						<td>Enter Old Password</td>
						<td><input type="password" name="password" /></td>
					</tr>
					<tr>
						<td>Enter New Password</td>
						<td><input type="password" name="npassword" /></td>
					</tr>
					<tr>
						<td>Enter confirm Password</td>
						<td><input type="password" name="cpassword" /></td>
					</tr>

					<tr>
						<td colspan="2">
							<div class="d-flex justify-content-center p-3">
								<button class="btn btn-success mx-auto">Submit</button>
							</div>
						</td>
					</tr>
				</table>
			</form>

		</div>

	</div>

</body>
</html>