<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰리스트 페이지</title>
</head>
<body>
<%@ include file="dbconn.jsp"%>
<%
	String user_Id = (String)session.getAttribute("user_Id");
	String sql = "SELECT * FROM KYJ_REVIEW ";
	String keyword = request.getParameter("keyword");
	if(keyword != null){
		sql += "WHERE R_TITLE LIKE '%" + keyword + "%' OR SCM_SHOPNAME LIKE '%" + keyword + "%'";
	} else {
		keyword = "";
	}
	sql += "ORDER BY CDATETIME DESC";
	ResultSet rs = stmt.executeQuery(sql);
%>
	<form name="review">
		<div>
			💚💚리뷰검색 : 
			<input type="text" name="keyword" value="<%=keyword%>" placeholder="가게명 혹은 제목을 입력해보세요!">
			<input type="button" value="검색" onclick="search()">
			<input type="button" value="전체보기" onclick="allList()">
			<input type="button" value="홈화면" onclick="mainHome()">
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
</body>
</html>
<script>
	var form = document.review;
	function search(){
		location.href="920_user_Review_List.jsp?keyword="+form.keyword.value;
	}
	function allList(){
		location.href="920_user_Review_List.jsp";
	}
	function mainHome(){
		location.href="1_home.jsp";
	}
</script>