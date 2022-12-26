<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>Welcome</title>
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

		<%
		try {
			String username = request.getParameter("em");
			String password = request.getParameter("pass");
			String cpassword = request.getParameter("cpass");
			System.out.println(password);
			System.out.println(username);
			System.out.println(cpassword);
			if(cpassword.equals(password)){
				Class.forName("com.mysql.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/flyaway";
				String user = "root";
				String pass = "Lucifer@16";
				Connection con = DriverManager.getConnection(url, user, pass);
				PreparedStatement st = con
				.prepareStatement("insert login (username, password ) values (?,?)");
				st.setString(1, username);
				st.setString(2, password);
				st.execute();
				String str = " <h1 class= \" text-danger \" > New user is registerd sucessfully </h1> ";
					out.println(" 	<div class= \" d-flex justify-content-center p-3 \" > " + str + " </div  > ");
					out.println(" 	<div class= \" d-flex justify-content-center p-3 \" > ");
					out.println("<a href= \" login.html \" > Click here to go back Login page </a>");
					out.println(" </div  > ");
			} else{
				String str = " <h1 class= \" text-danger \" > Invalid Credentials </h1> ";
				out.println(" 	<div class= \" d-flex justify-content-center p-3 \" > " + str + " </div  > ");
				out.println(" 	<div class= \" d-flex justify-content-center p-3 \" > ");
				out.println("<a href= \" register.jsp \" > Click here to go back Register page </a>");
				out.println(" </div  > ");
				
			}

		} catch (Exception e) {
			out.println(e);
		}
		%>

	</div>
</body>
</html>