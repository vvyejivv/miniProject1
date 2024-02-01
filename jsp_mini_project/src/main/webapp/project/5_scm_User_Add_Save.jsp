<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체 회원가입 데이터 저장</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		request.setCharacterEncoding("UTF-8");
		/* 업체 회원가입 내용  */
		String scm_Id = request.getParameter("scm_Id");
		String scm_Pw = request.getParameter("scm_Pw");
		String scm_ShopName = request.getParameter("scm_ShopName");
		String scm_Number = request.getParameter("scm_Number");
		String scm_Name = request.getParameter("scm_Name");
		String scm_Address = request.getParameter("scm_Address");
		String scm_Phone1 = request.getParameter("scm_Phone1");
		String scm_Phone2 = request.getParameter("scm_Phone2");
		String scm_Phone3 = request.getParameter("scm_Phone3");
		String scm_Phone = scm_Phone1 + "-" +scm_Phone2 + "-" + scm_Phone3;
		String scm_Email = request.getParameter("scm_Email");
		String scm_Type = request.getParameter("scm_Type");
		String scm_Gender = request.getParameter("scm_Gender");
		String scm_Code = request.getParameter("code");
		
		String sql = "INSERT INTO KYJ_SCM_USER VALUES('"
				+ scm_Id + "', '"
				+ scm_Pw + "', '"
				+ scm_ShopName + "', '"
				+ scm_Number + "', '"
				+ scm_Name + "', '"
				+ scm_Address + "', '"
				+ scm_Phone + "', '"
				+ scm_Email + "', '"
				+ scm_Type + "', '"
				+ scm_Gender + "', '"
				+ scm_Code + "')";

		stmt.executeUpdate(sql);
		
	
	%>
</body>
</html>
<script>
	alert("회원가입이 완료되었습니다.");
	location.href = "1_home.jsp";
</script>