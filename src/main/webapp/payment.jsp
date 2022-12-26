<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
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
		<div class="d-flex justify-content-center p-3">
			<%
			int count = Integer.parseInt((String) session.getAttribute("person"));
			out.println("<h1>" + "Payment of amount " + 5000 * count + "/- is successful" + "</h1>");
			%>
		</div>
		<div class="d-flex justify-content-center p-3">

			<form action="home.jsp" method="post">
				<input class="btn btn-danger" type="submit" value="Again book">
			</form>

		</div>


		<br>

	</div>
	</div>
</body>
</html>