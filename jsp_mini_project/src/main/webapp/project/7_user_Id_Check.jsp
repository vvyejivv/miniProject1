<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
</head>
<body>
	<form name="check">
		<%@ include file="dbconn.jsp"%>
		<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String sql = "SELECT * FROM TBL_MEMBER WHERE USERID = '" + id + "'";
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next()) {
			out.println("중복된 아이디 입니다.");
		%>
		<div>
			<input name="id"> <input type="button" value="중복체크"
				onclick="idCheck()">
		</div>
		<%
		} else {
		out.println("사용가능한 아이디 입니다.");
		}
		%>
		<div>
			<input type="button" value="닫기" onclick="popClose('<%=id%>')">
		</div>
	</form>
</body>
</html>
<script>
	function popClose(id) {
		/* 팝업(부모창(회원가입창)) form(name="join") input(name="id")의 값 */
		window.opener.document.join.id.value = id;
		window.close();
	}
	function idCheck() {
		location.href = "user_idCheck.jsp?id=" + document.check.id.value;
	}
</script>