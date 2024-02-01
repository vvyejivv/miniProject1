<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 회원가입 데이터 저장</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		request.setCharacterEncoding("UTF-8");
		/* 개인회원 회원가입 내용  */
		String csm_Id = request.getParameter("csm_Id");
		String csm_Pw = request.getParameter("csm_Pw");
		String csm_Name = request.getParameter("csm_Name");
		String csm_Date = request.getParameter("csm_Date");
		String csm_NikName = request.getParameter("csm_NikName");
		String csm_Address = request.getParameter("csm_Address");
		String csm_Phone1 = request.getParameter("csm_Phone1");
		String csm_Phone2 = request.getParameter("csm_Phone2");
		String csm_Phone3 = request.getParameter("csm_Phone3");
		String csm_Phone = csm_Phone1 + "-" + csm_Phone2 + "-" + csm_Phone3;
		String csm_Email = request.getParameter("csm_Email");
		String csm_Type = request.getParameter("csm_Type");
		String csm_Gender = request.getParameter("csm_Gender");
		String csm_Code = request.getParameter("code");
	
		String sql = "INSERT INTO KYJ_CSM_USER VALUES('" 
					+ csm_Id + "', '" 
					+ csm_Pw + "', '" 
					+ csm_Name + "', '" 
					+ csm_Date + "', '"
					+ csm_NikName + "', '" 
					+ csm_Address + "', '" 
					+ csm_Phone + "', '" 
					+ csm_Email + "', '" 
					+ csm_Type + "', '"
					+ csm_Gender + "', '" 
					+ csm_Code + "')";
	
		stmt.executeUpdate(sql);
	%>
</body>
</html>
<script>
	alert("회원가입이 완료되었습니다.");
	location.href = "1_home.jsp";
</script>