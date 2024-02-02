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
	/* 회원가입 내용  */
	String user_Id = request.getParameter("user_Id");
	String user_Pw = request.getParameter("user_Pw");
	String user_Name = request.getParameter("user_Name");
	String user_NikName = request.getParameter("user_NikName");
	String user_Phone1 = request.getParameter("user_Phone1");
	String user_Phone2 = request.getParameter("user_Phone2");
	String user_Phone3 = request.getParameter("user_Phone3");
	String user_Phone = user_Phone1 + "-" + user_Phone2 + "-" + user_Phone3;
	String user_Email = request.getParameter("user_Email");
	String user_Gender = request.getParameter("user_Gender");
	String user_Address = request.getParameter("user_Address");
	String user_Code = request.getParameter("code");
	String csm_Type = request.getParameter("csm_Type");
	String scm_Type = request.getParameter("scm_Type");
	String user_Date = request.getParameter("user_Date");

	String sql = "INSERT INTO KYJ_USER VALUES('" 
			+ user_Id + "', '" 
			+ user_Pw + "', '" 
			+ user_Name + "', '" 
			+ user_NikName+ "', '" 
			+ user_Phone + "', '" 
			+ user_Email + "', '" 
			+ user_Gender + "', '" 
			+ user_Address + "', '" 
			+ user_Code+ "', '" 
			+ csm_Type + "', '" 
			+ scm_Type+ "', '" 
			+ 0 + "', '" 
			+ user_Date + "')";

 	stmt.executeUpdate(sql);

	String scm_ShopName = request.getParameter("user_ShopName");
	String scm_Number = request.getParameter("user_Number");

	sql = "INSERT INTO KYJ_SCM VALUES('" + user_Id + "', '" + scm_ShopName + "', '" + scm_Number + "', '" + user_Name
			+ "', '" + user_Address + "', '" + scm_Type + "', '" + user_Code + "')";

	stmt.executeUpdate(sql); 
	%>
	<% conn.close(); %>
</body>
</html>
<script>
 	alert("회원가입이 완료되었습니다.");
	location.href = "1_home.jsp";
</script>