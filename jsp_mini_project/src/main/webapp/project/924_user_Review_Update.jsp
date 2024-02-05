<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 수정</title>
</head>
<body>
<%@ include file="dbconn.jsp"%>
<% 
	String R_NO = request.getParameter("R_NO");
	String user_Id = (String) session.getAttribute("user_Id");
	
	String sql="SELECT * FROM KYJ_REVIEW WHERE R_NO=" + R_NO;
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	String scm_ShopName = request.getParameter("scm_ShopName");
	String order_Date = request.getParameter("order_Date");
	String scm_Menu = request.getParameter("scm_Menu");	
%>
	<form action="925_user_Review_Update_Save.jsp">
		<div>💛<%=scm_ShopName %>의 리뷰를 수정해주세요💛<div>
		<div>
			리뷰 제목 : 
			<input type="text" name="title">
			<input name="user_Id"value="<%=user_Id%>" hidden>
			<input name="scm_ShopName"value="<%=scm_ShopName%>" hidden>
			<input name="R_NO"value="<%=R_NO%>" hidden>
		</div>
		<div>
			선택 메뉴 : <input type="text" value="<%=scm_Menu%>" disabled>
			<input type="text" value="<%=scm_Menu%>" name="menu" hidden>
		
		</div>
		<div>
			주문한 날짜 : <input type="text" value="<%=order_Date%>" disabled>
			<input type="text" value="<%=order_Date%>" name="order_Date" hidden>
		</div>
		<div> 
			<div>리뷰 내용 : </div> 
			<textarea rows="20" cols="100" name="contents"></textarea>
		</div>
		<div>
			<input type="submit" value="리뷰수정하기">
			<input type="button" value="취소" onclick="history.back()">	
		</div>
	</form>
</body>
</html>