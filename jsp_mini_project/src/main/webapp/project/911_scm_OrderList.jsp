<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역 페이지</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String user_Id = request.getParameter("user_Id");
	String sql = "SELECT * FROM KYJ_USER WHERE USER_ID = '" + user_Id + "'";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<div class="order_List">
		<table border="1">
			<tr>
				<td>NO</td>
				<td>주문자</td>
				<td>메뉴</td>
				<td>가격</td>
				<td>주문날짜</td>
			</tr>
			<%
				int cnt = 0;
				while(rs.next()){
			%>
			<tr>
				<td>
					<%
						++cnt; 
						out.print(cnt);
					%>
				</td>
				<td><%=rs.getString("SCM_TYPE")%></td>
				<td><%=rs.getString("SCM_SHOPNAME")%></td>
				<td><%=rs.getString("SCM_MENU")%></td>
				<td><%=rs.getString("TOTAL_PRICE")%></td>		
				<td><%=rs.getString("ORDER_DATE")%></td>
			</tr>
			<% }%>
		</table>
	</div>
</body>
</html>