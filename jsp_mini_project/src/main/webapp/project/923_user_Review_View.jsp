<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REVIEW</title>
</head>
<body>
	<form name="review"action="">
		<input name="R_NO" hidden>
		<%@ include file="dbconn.jsp"%>
		<%
		String R_NO= request.getParameter("R_NO");
		String sql ="SELECT * FROM KYJ_REVIEW WHERE R_NO=" + R_NO;
		
		ResultSet rs = stmt.executeQuery(sql);
        rs.next();
        %>
            <div>💛리뷰💛</div>
            <table border="1">
                <tr>
                    <th>제목</th>
                    <td><%=rs.getString("R_TITLE")%></td>           
                </tr>
                <tr>
                    <th>작성자</th>
                    <td><%=rs.getString("USER_ID")%></td>
                </tr>
                <tr>
                    <th>메뉴</th>
                    <td><%=rs.getString("SCM_MENU")%></td>
                </tr>
                <tr>
                    <th>작성일</th>
                    <td><%=rs.getString("UDATETIME")%></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td><%=rs.getString("R_CONTENTS")%></td>
                </tr>
            </table>
            <div>
            	<input type="button" onclick="mainHome()" value="HOME">
            	<input type="button" onclick="allList()" value="전체리뷰">
				<input type="button" value="수정하기" onclick="reviewU('<%=R_NO%>','<%=rs.getString("SCM_SHOPNAME")%>','<%=rs.getString("ORDER_DATE")%>','<%=rs.getString("SCM_MENU")%>')">
				<input type="button" value="삭제하기" onclick="reviewD('<%=R_NO%>')">
            </div>
        <%-- <% 
        String sessionId = "";
		String review_Id = rs.getString("USER_ID");
		if(request.isRequestedSessionIdValid()){
			sessionId = (String) session.getAttribute("user_Id");		
		}
		if(sessionId.equals(review_Id) || sessionId.equals("admin")){
		%>
			<input type="button" value="삭제하기" onclick="reviewD('<%=R_NO%>')">
		<% 
		}
        %> --%>
    </form>
</body>
</html>
<script>
	function mainHome(){
		location.href="1_home.jsp";
	}
	function allList(){
		location.href="920_user_Review_List.jsp";
	}
	function reviewD(R_NO){
		if(confirm("정말 리뷰를 삭제하시겠습니까?")){			
			location.href="926_user_Review_Delete.jsp?R_NO="+R_NO;
		}
	}
	function reviewU(R_NO,shop,date,menu){
		if(confirm("정말 리뷰를 수정하시겠습니까?")){			
			location.href="924_user_Review_Update.jsp?R_NO="+R_NO+"&scm_ShopName="+shop+"&order_Date="+date+"&scm_Menu="+menu;
		}
	}
		
</script>