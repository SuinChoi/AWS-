<%@ page import = "java.sql.*" %>
<%
	Statement stm = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	String myUrl = "jdbc:mysql://rds2016156041.cupqqqoaojmk.us-east-1.rds.amazonaws.com/travel";
	Connection conn = DriverManager.getConnection(myUrl,"admin", "12345678");
	try {
        	stm = conn.createStatement();
        	if(stm.execute("select * from t_list")) {
                	rs = stm.getResultSet();
        }
        while(rs.next()) {
                out.println(rs.getString("no"));
                out.println(rs.getString("place"));
                out.println(rs.getString("score"));
                out.println(rs.getString("tdate"));
                out.println(rs.getString("purpose"));
                out.write("<br>");
        }
        rs.close();
        stm.close();
}
catch(Exception e) {
        out.println("rs.next() ERROR");
}
conn.close();
%>
