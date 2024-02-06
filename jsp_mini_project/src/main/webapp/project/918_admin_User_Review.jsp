<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 리뷰리스트</title>
<link rel="stylesheet" href="user_Review_List.css?after" type="text/css" >
</head>
<body>
<%@ include file="dbconn.jsp"%>
<%
	String sessionId = (String) session.getAttribute("user_Id");
	String user_Id = request.getParameter("user_Id");
	String sql = "SELECT * FROM KYJ_REVIEW WHERE USER_ID='"+ user_Id +"'";
	String keyword = request.getParameter("keyword");
	if(keyword != null){
		sql += "OR R_TITLE LIKE '%" + keyword + "%' ";
	} else {
		keyword = "";
	}
	sql += "ORDER BY R_NO DESC";
	ResultSet rs = stmt.executeQuery(sql);
%>
	<form name="review">
		<div>
			💜💜리뷰검색 : 
			<input type="text" name="keyword" value="<%=keyword%>" placeholder="단어 입력해보세요!">
			<input type="button" value="검색" onclick="search()">
			<input type="button" value="전체보기" onclick="allList()">
			<input type="button" value="회원목록" onclick="mainHome()">
		</div>
		<table border="1">
			<tr>
				<th>NO</th>
				<th>제목</th>
				<th>작성자</th>
				<th>업체명</th>
				<th>주문 날짜</th>			
				<th>리뷰 작성 날짜</th>
				<th>삭제</th>		
			</tr>
		<%
			int cnt = 0;
			while(rs.next()){
				++cnt;
		%>
			<tr>
				<td><%=cnt%></td>
				<td>
					<a href="923_user_Review_View.jsp?R_NO=<%=rs.getString("R_NO") %>&user_Id=<%=rs.getString("USER_ID")%>&sessionId=<%=sessionId%>">
						<%=rs.getString("R_TITLE") %>
					</a>
				</td>
				<td><%=rs.getString("USER_ID") %></td>
				<td><%=rs.getString("SCM_SHOPNAME") %></td>
				<td><%=rs.getString("ORDER_DATE") %></td>
				<td><%=rs.getString("UDATETIME") %></td>
				<td><input type="button" onclick="btnD('<%=rs.getString("R_NO")%>')" value="삭제"></td>
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
		location.href="918_admin_User_Review.jsp?keyword="+form.keyword.value;
	}
	function allList(){
		location.href="918_admin_User_Review.jsp?keyword="+form.keyword.value;
	}
	function mainHome(){
		location.href="9_admin_view.jsp";
	}
	function btnD(num){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href = "926_user_Review_Delete.jsp?R_NO="+num;
		}
	}
</script>