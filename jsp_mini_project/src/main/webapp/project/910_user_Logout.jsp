<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 페이지</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	if(request.isRequestedSessionIdValid()){
		session.invalidate();
		}
	%>
</body>
</html>
<script>
	alert("로그아웃 되었습니다.");
	location.href = "1_home.jsp";
</script>