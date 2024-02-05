<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 삭제</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String sessionId = (String) session.getAttribute("user_Id");
		String R_NO = request.getParameter("R_NO");
		String sql = ("DELETE FROM KYJ_REVIEW WHERE R_NO = " + R_NO);
		stmt.executeUpdate(sql);
	%>
</body>
</html>
<script>
	location.href = "920_user_Review_List.jsp"; 
</script>