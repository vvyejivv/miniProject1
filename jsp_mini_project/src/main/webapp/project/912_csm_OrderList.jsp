<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 주문내역리스트</title>
<link rel="stylesheet" href="orderList.css">
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String user_Id = request.getParameter("user_Id");
	String shopName = request.getParameter("shopName");
	// 입력된 가게명에 해당하는 주문 내역 조회
	if (shopName == null) {
		shopName = "";
	}
	String sql = "SELECT O.SCM_TYPE, O.SCM_SHOPNAME, O.ORDER_DATE, O.SCM_MENU, O.TOTAL_PRICE , C.TOTAL AS TOTAL "
			+ "FROM KYJ_USER U " 
			+ "INNER JOIN KYJ_SCM S ON U.USER_ID = S.USER_ID "
			+ "INNER JOIN KYJ_ORDER O ON S.SCM_SHOPNAME = O.SCM_SHOPNAME " 
			+ "INNER JOIN ("
			+ "SELECT SCM_SHOPNAME, SUM(TOTAL_PRICE) AS TOTAL " + "FROM KYJ_ORDER " + "WHERE USER_ID = '" + user_Id
			+ "' AND SCM_SHOPNAME LIKE '%" + shopName + "%' "
			+ "GROUP BY SCM_SHOPNAME) C ON S.SCM_SHOPNAME = C.SCM_SHOPNAME";;
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<form name="orderList">
		<div class="order_List">
			<div class="order_title">
				<div>
					<h2><%=user_Id%>님의 주문내역</h2>
				</div>
				<div>
					<input type="text" name="shopName" placeholder="가게명을 입력하세요" value=""> 
						<input type="button" value="검색하기" onclick="search('<%=user_Id%>')">
						<input type="button" value="전체보기" onclick="allList('<%=user_Id%>')">
						<input type="button" value="홈화면" onclick="mainHome('<%=user_Id%>')">
						
				</div>

			</div>
			<table border="1" id="orderTable">
				<tr>
					<th>NO</th>
					<th>분류</th>
					<th>상호명</th>
					<th>주문날짜</th>
					<th>메뉴</th>
					<th>가격</th>
				</tr>
				<%
				int cnt = 0;
				int total = 0;
				while (rs.next()) {
					++cnt;
				%>
				<tr>
					<td><%=cnt%></td>
					<td><%=rs.getString("SCM_TYPE")%></td>
					<td><%=rs.getString("SCM_SHOPNAME")%></td>
					<td><%=rs.getString("ORDER_DATE")%></td>
					<td><%=rs.getString("SCM_MENU")%></td>
					<td><%=rs.getString("TOTAL_PRICE")%></td>
				</tr>
				<%
				total += rs.getInt("TOTAL_PRICE");
				}
				%>
				<tr>
					<td colspan="5">총금액</td>
					<td><%=total%></td>
				</tr>
			</table>
		</div>
	</form>
	<%
	conn.close();
	%>
</body>
</html>
<script>
	var orderList = document.orderList;
	function search(user_Id) {
		var encodedShopName = encodeURIComponent(orderList.shopName.value);
		if(orderList.shopName.value == "" || orderList.shopName.value == "null" || orderList.shopName.value == undefined){
			alert("가게명을 입력하세요");
		}
		location.href = "912_csm_OrderList.jsp?shopName=" + encodedShopName
				+ "&user_Id=" + user_Id;
	}
	function allList(user_Id){
		location.href = "912_csm_OrderList.jsp?user_Id=" + user_Id;
	}
	function mainHome(user_Id){
		location.href = "8_csm_login_view.jsp?user_Id=" + user_Id;
	}
</script>
