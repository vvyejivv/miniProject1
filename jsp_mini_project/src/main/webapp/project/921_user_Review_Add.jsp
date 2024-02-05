<%@page import="java.lang.reflect.Executable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성 페이지</title>
</head>
<body>
<%@ include file="dbconn.jsp"%>
<% 
	String user_Id = request.getParameter("user_Id");
	String scm_ShopName = request.getParameter("scm_ShopName");
	String order_Date = request.getParameter("order_Date");
	String scm_Menu = request.getParameter("scm_Menu");	
%>
	<form action="922_user_Review_Add_Save.jsp">
		<div>💛<%=scm_ShopName %>의 리뷰를 작성해주세요💛<div>
		<div>
			리뷰 제목 : 
			<input type="text" name="title">
			<input name="user_Id"value="<%=user_Id%>" hidden>
			<input name="scm_ShopName"value="<%=scm_ShopName%>" hidden>
		</div>
		<div>
			선택 메뉴 : <input type="text" value="<%=scm_Menu%>" disabled>
			<input type="text" value="<%=scm_Menu%>" name="scm_Menu" hidden>
		
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
			<input type="submit" value="작성하기">
			<input type="button" value="취소" onclick="history.back()">	
		</div>
	</form>
</body>
</html>