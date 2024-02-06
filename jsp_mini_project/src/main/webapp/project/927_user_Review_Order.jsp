<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문한 가게 리뷰 확인</title>
<link rel="stylesheet" href="user_Review_List.css?after" type="text/css" >
</head>
<body>
<%@ include file="dbconn.jsp"%>
<%
	String user_Id = (String)session.getAttribute("user_Id");
	String sql = "SELECT * FROM KYJ_REVIEW WHERE USER_ID = '" + user_Id +"'";
	String keyword = request.getParameter("keyword");
	if(keyword != null){
		sql += " AND R_TITLE LIKE '%" + keyword + "%' OR SCM_SHOPNAME LIKE '%" + keyword + "%'";
	} else {
		keyword = "";
	}
	sql += "ORDER BY CDATETIME DESC";
	ResultSet rs = stmt.executeQuery(sql);
%>
	<form name="review">
		<div>
			💙💙리뷰검색 : 
			<input type="text" name="keyword" value="<%=keyword%>" placeholder="가게명 혹은 제목을 입력해보세요!">
			<input type="button" value="검색" onclick="search()">
			<input type="button" value="전체보기" onclick="allList()">
			<input type="button" value="홈화면" onclick="mainHome('<%=user_Id%>')">
			<input type="button" value="로그아웃" onclick="user_LogOut()">
			<input type="text" value="제목을 누르면 리뷰를 볼 수 있어요!" disabled>
		</div>
		<table border="1">
			<tr>
				<th>NO</th>
				<th>업체명</th>
				<th>제목</th>
				<th>작성자</th>
				<th>주문 날짜</th>			
				<th>리뷰 작성 날짜</th>			
			</tr>
		<%
			int cnt = 0;
			while(rs.next()){
				++cnt;
		%>
			<tr>
				<td><%=cnt %></td>
				<td><%=rs.getString("SCM_SHOPNAME") %></td>
				<td>
					<a href="923_user_Review_View.jsp?R_NO=<%=rs.getString("R_NO") %>">
						<%=rs.getString("R_TITLE") %>
					</a>
				</td>
				<td><%=rs.getString("USER_ID") %></td>
				<td><%=rs.getString("ORDER_DATE") %></td>
				<td><%=rs.getString("UDATETIME") %></td>
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
	var form = document.review;
	function search(){
		location.href="927_user_Review_Order.jsp?keyword="+form.keyword.value;
	}
	function allList(){
		location.href="927_user_Review_Order.jsp";
	}
	function mainHome(user_Id){
		location.href="8_csm_login_view.jsp?user_Id="+user_Id;
	}
	/* 로그아웃  */
	function user_LogOut(){
		if(confirm("로그아웃 하시겠습니까?")){
		location.href = "910_user_Logout.jsp";			
		}
	}
</script>