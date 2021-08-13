<%@ page language="java" contentType="text/html; charset=utf-8"
    %>
    <%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String psswd=request.getParameter("psswd"); 
		String place=request.getParameter("place"); 
		String tdate = request.getParameter("date");
		String score= request.getParameter("score");
		String purpose= request.getParameter("purpose");
		%>

			<%
		if(psswd.equals("1234")){
			%>
			<%@ include file ="dbconn.jsp" %>
	<%		
		PreparedStatement pstmt = null; 
	
		String sql ="INSERT INTO t_list (place, tdate, score, purpose) VALUES (?, ?, ?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, place);
		pstmt.setString(2, tdate);
		pstmt.setString(3, score);
		pstmt.setString(4, purpose);
		
		pstmt.executeUpdate();
				
		pstmt.close(); 
			%>
			<script>
				alert("저장 성공!");
				  opener.location.reload();
				 close();
			</script>
<%
		}
		else{	
			%>
			<script>
			alert("비밀번호 오류!");
			 close();
			</script>
			<%
		}
	%> 

</body>
</html>
