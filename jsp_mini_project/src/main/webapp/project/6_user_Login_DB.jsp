<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 데이터</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String user_Id = request.getParameter("user_Id");
	String user_Pw = request.getParameter("user_Pw");

	String sql = "SELECT * FROM KYJ_USER WHERE USER_ID = '" + user_Id + "' AND USER_PW = '" + user_Pw + "'";
	ResultSet rs = stmt.executeQuery(sql);

	if (rs.next()) {
		if (rs.getInt("CNT") >= 4) {
			out.print("비밀번호 5번 이상 실패했습니다. 관리자에게 문의하세요.");
		} else {
			session.setAttribute("user_Id", rs.getString("USER_ID"));
			session.setAttribute("user_Name", rs.getString("USER_NAME"));
			session.setAttribute("code", rs.getString("CODE"));
		}
		/* 관리자 실행 user_login_view.jsp 파일 참고  */

		if (rs.getString("CODE").equals("0")) {
			response.sendRedirect(""); /* 고객관리 리스트  */
		}
		sql = "UPDATE KYJ_USER SET CNT = 0 WHERE USER_ID = '" + user_Id + "'";
		stmt.executeUpdate(sql);
	%>
	<form action="user_update.jsp" method="post" name="userInfo">
		<input name="id" value="<%=user_Id%>" hidden> <input
			type="button" value="게시판" onclick="btn('g')"> <input
			type="button" value="회원정보 수정" onclick="btn('u')"> <input
			type="button" value="회원정보 삭제" onclick="btn('d')">
	</form>
	<%
	} else {
	String idSql = ("SELECT * FROM KYJ_USER " + "WHERE USER_ID = '" + user_Id + "'");
	ResultSet rsId = stmt.executeQuery(idSql);
	if (rsId.next()) {
		//1. 아이디가 있는데 패스워드가 다른 경우
		int cnt = rsId.getInt("CNT");
		if ((cnt + 1) >= 5) {
			out.println("5번 이상 실패한 계정입니다. 관리자에게 문의하세요.");
		} else {
			out.println((cnt + 1) + "번 실패 !!!");
			stmt.executeUpdate("UPDATE KYJ_USER SET " + "CNT = CNT+1" + "WHERE USER_ID ='" + user_Id + "'");
		}
	} else {
		//2. 아이디가 없는 경우
		out.print("아이디를 확인해주세요.");
	}
	%>
	<div>
		<input type="button" value="돌아가기" onclick="history.back()">
	</div>
	<%
	}
	%>

</body>
</html>