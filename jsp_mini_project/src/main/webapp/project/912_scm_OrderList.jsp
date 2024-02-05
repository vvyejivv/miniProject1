<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출내역 페이지</title>
<link rel="stylesheet" href="orderList.css">
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String user_Id = request.getParameter("user_Id");
	String menu = request.getParameter("menu");
	if(menu == null){
		menu = "";
	}
	String sql = "SELECT O.USER_ID AS CSM_ID, S.SCM_SHOPNAME, M.SCM_MENU, O.TOTAL_PRICE, O.ORDER_DATE " 
            + "FROM KYJ_USER U "
            + "INNER JOIN KYJ_SCM S ON U.USER_ID = S.USER_ID "
            + "INNER JOIN KYJ_ORDER O ON S.SCM_SHOPNAME = O.SCM_SHOPNAME "
            + "INNER JOIN KYJ_MENU M ON S.SCM_SHOPNAME = M.SCM_SHOPNAME "
            + "WHERE S.USER_ID = '"+ user_Id + "' "
            + "AND M.SCM_MENU LIKE '%" + menu + "%'";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<form name="orderList">
		<div class="order_List">
			<div class="order_title">
				<div>
					<h2><%=user_Id%>님의 매출내역</h2>
				</div>
				<div>
					<input type="text" name="menu" placeholder="메뉴를 입력하세요" value=""> 
						<input type="button" value="검색하기" onclick="search('<%=user_Id%>')">
						<input type="button" value="전체보기" onclick="allList('<%=user_Id%>')">
						<input type="button" value="홈화면" onclick="mainHome('<%=user_Id%>')">
						
				</div>

			</div>
			<table border="1" id="orderTable">
			<tr>
				<th>NO</th>
				<th>주문자</th>
				<th>메뉴</th>
				<th>주문날짜</th>
				<th>가격</th>
			</tr>
			<%
				int cnt = 0;
				int total = 0;
				while(rs.next()){
				++cnt; 
			%>
			<tr>
				<td><%=cnt%></td>
				<td><%=rs.getString("CSM_ID")%></td>
				<td><%=rs.getString("SCM_MENU")%></td>
				<td><%=rs.getString("ORDER_DATE")%></td>
				<td><%=rs.getString("TOTAL_PRICE")%></td>		
			</tr>
			<% 
			total += rs.getInt("TOTAL_PRICE");
			}
			%>
			<tr>
				<td colspan="4">총금액</td>
				<td><%=total%></td>
			</tr>
		</table>
	</div>
</div>
</form>	
	<% conn.close(); %>
</body>
</html>
<script>
	var orderList = document.orderList;
	function search(user_Id) {
		var menu = encodeURIComponent(orderList.menu.value);
		if(orderList.menu.value == "" || orderList.menu.value == "null" || orderList.menu.value == undefined){
			alert("메뉴를 입력하세요");
		}
		location.href = "912_scm_OrderList.jsp?menu=" + menu+ "&user_Id=" + user_Id;
	}
	function allList(user_Id){
		location.href = "912_scm_OrderList.jsp?user_Id=" + user_Id;
	}
	function mainHome(user_Id){
		location.href = "8_scm_login_view.jsp?user_Id=" + user_Id;
	}
</script>