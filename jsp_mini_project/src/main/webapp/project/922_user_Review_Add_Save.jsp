<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 데이터 저장</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String user_Id = (String)session.getAttribute("user_Id");
		String scm_ShopName = request.getParameter("scm_ShopName");
		String scm_Menu = request.getParameter("scm_Menu");
		String order_Date = request.getParameter("order_Date");

		
		/* String sql = "INSERT INTO TBL_BOARD " 
				+ "VALUES(" 
				+ "BBS_SEQ.NEXTVAL" +", '"
				+ title +"', '"
				+ contents +"', "
				+ "0" +", '"
				+ id +"', "
				+ "2" +", " 
				+ "SYSDATE" +", " 
				+ "SYSDATE" +")";

		stmt.executeUpdate(sql);  */
		
		String sql = "INSERT INTO KYJ_REVIEW "
					+ "VALUES("
					+ "review_seq.NEXTVAL" + ", '"
					+ title +"', '"
					+ user_Id+"', '"
					+ scm_Menu + "', '"
					+ contents + "', "
					+ "SYSDATE" +", " 
					+ "SYSDATE" +", '"
					+ order_Date + "', '"
					+ scm_ShopName + "')";
 		stmt.executeUpdate(sql); 
	%>
</body>
</html>
<script>
/* 	alert("리뷰가 등록되었습니다!❤❤");
	location.href = "920_user_Review_List.jsp"; */
</script>