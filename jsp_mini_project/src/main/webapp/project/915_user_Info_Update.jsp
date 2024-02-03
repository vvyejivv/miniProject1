<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 업데이트</title>
</head>
<body>
<%@ include file="dbconn.jsp"%>
<%
	String user_Id = request.getParameter("user_Id");
	String user_Pw = request.getParameter("user_Pw");
	String user_Name = request.getParameter("user_Name");
	String user_Gender = request.getParameter("user_Gender");
	String user_Phone1 = request.getParameter("user_Phone1");
	String user_Phone2 = request.getParameter("user_Phone2");
	String user_Phone3 = request.getParameter("user_Phone3");
	String Phone = user_Phone1+"-"+user_Phone2+"-"+user_Phone3;
	String user_Address = request.getParameter("user_Address");
	String user_Email = request.getParameter("user_Email");
	String scm_Type= request.getParameter("scm_Type");
	String code = request.getParameter("code");
	
	String pwdStr = "";
	if(user_Pw != null && user_Pw.equals("")){
		pwdStr = "user_Pw = '" + user_Pw + "', ";
	}
	
	String sql = "UPDATE KYJ_USER SET "
			+ pwdStr 
			+"USER_NAME = '" + user_Name + "', "
			+"USER_GENDER = '" + user_Gender + "', "
			+"USER_PHONE = '" + Phone + "', "
			+"USER_ADDRESS = '" + user_Address + "', "
			+"USER_EMAIL = '" + user_Email + "', "
			+"SCM_TYPE = '" + scm_Type + "' "
			+"WHERE USER_ID = '" + user_Id +"'";
	stmt.executeUpdate(sql);	
	if(code =="1"){
		sql = "UPDATE KYJ_SCM SET "
			+"USER_NAME = '" + user_Name + "', "
			+"USER_ADDRESS = '" + user_Address + "', "
			+"SCM_TYPE = '" + scm_Type + "' "
			+"WHERE USER_ID = '" + user_Id +"'"	;
		stmt.executeUpdate(sql);	
	}
	
%>

</body>
</html>
<script>
	var code = "<%=code%>";
 	alert("회원정보가 수정되었습니다.");
 	
 	if(code == 1){
 		location.href = "8_scm_login_view.jsp?user_Id=" + "<%= user_Id %>";
 	}else{
 		location.href = "8_csm_login_view.jsp?user_Id=" + "<%= user_Id %>";
 	}
</script>