<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 초기화</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String user_Id = request.getParameter("user_Id");
		String sql = "UPDATE KYJ_USER SET "
					+"CNT = 0 "
					+"WHERE USER_ID ='" + user_Id + "'";
		stmt.executeUpdate(sql);
	%>

</body>
</html>
<script>
	alert("초기화 되었습니다.");
	location.href = "9_admin_view.jsp";
</script>