<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" href="admin_view.css?after" type="text/css" >
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String sessionId = (String) session.getAttribute("user_Id");
	String sql = "SELECT * FROM KYJ_USER";
	String word = request.getParameter("word");
	String code = request.getParameter("code");
 	if(word != null){
		sql+= " WHERE USER_ID LIKE '%" + word + "%' or USER_NAME LIKE '%" + word + "%'";
	}else{
		word = "";
	}
 	if(code != null){
		sql+= " WHERE CODE = " + code;
	}else{
		code = "";
	}
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<form name="user_List">
		<div>
			<input type="text" name="word" value="<%=word%>" placeholder="ID 또는 이름 입력하세요.">
			<input type="button" name="idBtn" value="검색" onclick="idSearch('<%=word%>')">
			
			<input type="text" name="code" value="<%=code%>" placeholder="회원코드를 입력하세요.">
			<input type="button" name="codeBtn" value="검색" onclick="codeSearch(<%=code%>)">
			
			<input type="button" name="alltn" value="전체보기" onclick="allList()">
			<input type="button" name="checkDtn" value="선택삭제" onclick="checkD()">
			<input type="button" name="logOut" value="로그아웃" onclick="adminLogOut()">
		</div>
		<table border="1" id="user_List">
			<tr>
				<th><input type="checkbox" class="selectAll" onclick="selectAllCheckboxes()"></th>
				<th>NO</th>
				<th>아이디</th>
				<th>이름</th>
				<th>연락처</th>
				<th>이메일</th>
				<th>성별</th>
				<th>주소</th>
				<th>생년월일</th>
				<th>회원코드(1.업체 2.개인)</th>
				<th>회원리뷰</th>
				<th>삭제</th>
				<th>비밀번호 초기화</th>
			</tr>
			<%
			int cnt = 0;
			while (rs.next()) {
				++cnt;
			%>
			<tr>
				<td><input type="checkbox" name="user_Checkbox" value="<%=rs.getString("USER_ID")%>"></td>
				<td><%=cnt%></td>
				<td><%=rs.getString("USER_ID")%></td>
				<td><%=rs.getString("USER_NAME")%></td>
				<td><%=rs.getString("USER_PHONE")%></td>
				<td><%=rs.getString("USER_EMAIL")%></td>
				<td><%=rs.getString("USER_GENDER")%></td>
				<td><%=rs.getString("USER_ADDRESS")%></td>
				<td><%=rs.getString("USER_DATE")%></td>
				<td><%=rs.getString("CODE")%></td>
				<td><input type="button" onclick="btnR('<%=rs.getString("USER_ID")%>','<%=sessionId %>')" value="리뷰"></td>
				<td><input type="button" onclick="btnD('<%=rs.getString("USER_ID")%>')" value="삭제"></td>
				<td>
				<% 
					if(rs.getInt("CNT") >= 4){
				%>	
						<input type="button" onclick="btnI('<%=rs.getString("USER_ID")%>')" value="초기화">
				<%				
	
					}
				%>
				</td>
			</tr>
			<%
			}
			%>
		</table>
	</form>
<% conn.close(); %>
</body>
</html>
<script>
	/* 검색  */
	var form = document.user_List;
	function idSearch(word){
		location.href="9_admin_view.jsp?word="+form.word.value;
	}
	function codeSearch(code){
		location.href = "9_admin_view.jsp?code=" + form.code.value;
	}
	/* 리뷰  */
	function btnR(user_Id,sessionId){
		location.href="918_admin_User_Review.jsp?user_Id="+user_Id+"&sessionId="+sessionId;
	}
	/* 정보 삭제  */
	function btnD(user_Id){
		location.href="916_user_delete.jsp?user_Id="+user_Id;
	}
	/* 비밀번호 횟수 초기화  */
	function btnI(user_Id){
		location.href="917_user_Login_init.jsp?user_Id="+user_Id;
	}
	/* 회원리스트 전체보기 */
	function allList(){
		location.href = "9_admin_view.jsp?";
	}
	/* 체크박스 회원 삭제 */
	function checkD(){
		if(confirm("정말 삭제하시겠습니까?")){
			var form = document.user_List;
			form.action = "919_admin_User_delete.jsp";
			form.submit();

		}
	}
	/* 체크박스 전체 선택  */
	function selectAllCheckboxes() {
        var checkboxes = document.getElementsByName('user_Checkbox');
        var selectAllCheckbox = document.querySelector('.selectAll');

        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = selectAllCheckbox.checked;
        }
    }
	/* 로그아웃 */
		function adminLogOut(){
		if(confirm("로그아웃 하시겠습니까?")){
		location.href = "910_user_Logout.jsp";			
		}
	}
</script>