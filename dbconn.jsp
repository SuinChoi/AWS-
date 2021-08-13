
    <%@ page import="java.sql.*" %>
	<%	
	Connection conn = null;
	
		String url = "jdbc:mysql://rds2016156041.cupqqqoaojmk.us-east-1.rds.amazonaws.com/travel";
		String user = "admin";
		String password ="12345678";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);		
	%>
