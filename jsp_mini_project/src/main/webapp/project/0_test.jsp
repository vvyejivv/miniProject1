<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판페이지</title>
<style>
	table,tr,td,th{
		border : 1px solid black;
		padding : 5px 10px;
		border-collapse: collapse;
		text-align : center;
	}
	th{
		background-color: #eee;
	}
	a{
		text-decoration : none;
		color : black;
		font-weight : bold;
	}
	a:visited{
		color : black;
	}
	a:hover{
		color : blue;
	}
</style>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String sql = "SELECT B.BOARDNO, TITLE, B.USERID, USERNAME, HIT," 
				+ "TO_CHAR(B.CDATETIME, 'YY/MM/DD HH24:MI') AS CDATETIME, " 
				+ "TO_CHAR(B.UDATETIME, 'YY/MM/DD HH24:MI') AS UDATETIME, "
				+ "C.CNT "
				+ "FROM TBL_BOARD B "
				+ "INNER JOIN TBL_MEMBER M ON B.USERID = M.USERID "
				+ "LEFT JOIN ( "
				+ "SELECT B.BOARDNO, COUNT(*) AS CNT "
				+ "FROM TBL_BOARD B "
				+ "INNER JOIN TBL_COMMENT C ON B.BOARDNO = C.BOARDNO "
				+ "GROUP BY B.BOARDNO "
				+ ") C ON B.BOARDNO = C.BOARDNO ";
		
		String keyword = request.getParameter("keyword");
		if(keyword != null){
			sql += "WHERE TITLE LIKE '%" + keyword + "%' ";	
		}else{
			keyword = "";
		}
		sql += "ORDER BY CDATETIME DESC";
		ResultSet rs = stmt.executeQuery(sql);

		
		
	%>
	<form name="board_list">
		<div>
			검색어 : 
			<input type="text" name="keyword" value="<%=keyword%>">
			<input type="button" value="검색" onclick="search()">
		</div>
		<table>
			<tr>
				<th style="width:10%">게시글번호</th>
				<th style="width:40%">제목</th>
				<th style="width:10%">작성자</th>
				<th style="width:10%">조회수</th>
				<th style="width:15%">작성날짜</th>			
				<th style="width:15%">수정날짜</th>			
			</tr>
		<%
			while(rs.next()){
		%>
			<tr>
				<td><%=rs.getString("BOARDNO") %></td>
				<td>
					<a href="user_board_view.jsp?boardNo=<%=rs.getString("BOARDNO")%>">
						<%=rs.getString("TITLE") %>
					</a>
						<% if(rs.getString("CNT") != null){
						%>
							<a href="#" onclick="fncmt(<%=rs.getString("BOARDNO")%>)"><span>(<%=rs.getString("CNT")%>)</span></a>
						<%
						}%>
					
				</td>
				<td><%=rs.getString("USERNAME") %></td>
				<td><%=rs.getString("HIT") %></td>
				<td><%=rs.getString("CDATETIME") %></td>
				<td><%=rs.getString("UDATETIME") %></td>
			</tr>
		<%
			}
		%>
		</table>
	<input type="submit" value="글쓰기" formaction="user_board_add.jsp">
	</form>	
</body>
</html>
<script>
	var board = document.board_list;
	function search(){
		location.href="user_board_list.jsp?keyword=" + board.keyword.value;
		/* 2개 이상 보낼 시 "board_list.jsp?keyword=" + keyword + "&title=" + title */
	}
	/* 댓글 팝업창  */
	function fncmt(boardNo){
		/* 	location.href="user_board_view.jsp?boardNo=" + boardNo; */
		/*  팝업 만들기 window.open(주소,팝업이름,크기) */
		window.open("user_board_cmtList.jsp?boardNo=" + boardNo,"cmt","width=400, height=400"); 
	}
</script>