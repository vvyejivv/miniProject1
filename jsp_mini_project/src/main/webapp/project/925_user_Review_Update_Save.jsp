<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 수정 데이터</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%	
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		String R_NO = request.getParameter("R_NO");

		String sql = "UPDATE KYJ_REVIEW SET " 
			+"R_TITLE = '" + title + "',"
			+"R_CONTENTS = '" + contents + "',"
			+"UDATETIME = SYSDATE "
			+"WHERE R_NO = " + R_NO;	 

		stmt.executeUpdate(sql);
		
	%>	
</body>
</html>
<script>
	alert("수정되었습니다.");
	location.href = "920_user_Review_List.jsp";
</script>