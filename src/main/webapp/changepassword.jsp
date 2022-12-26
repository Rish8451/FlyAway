<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
String username = (String) session.getAttribute("username");
String PASS = request.getParameter("npassword");
String oldpass = request.getParameter("password");
String confirmPassword = request.getParameter("cpassword");

if (PASS.equals(confirmPassword)) {
	String OLDPASS = "";
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/flyaway";
	String user = "root";
	String pass = "Lucifer@16";
	String sql1 = "select password from login where username='" + username + "';";
	String sql2 = "update login set password=" + confirmPassword + " where username='" + username + "';";
	Connection con = DriverManager.getConnection(url, user, pass);
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql1);
	if (rs.next()) {
		OLDPASS = rs.getString("password");
	}
	if (oldpass.equals(OLDPASS)) {
		st = con.createStatement();
		int i = st.executeUpdate(sql2);
		out.println("password updated");
		RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
		rd.include(request, response);
	} else {
		out.println("Invalid old password");
		RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
		rd.include(request, response);
	}
} else {
	out.println("passwords don't match");
	RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
	rd.include(request, response);
}
%>