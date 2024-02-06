<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REVIEW</title>
<link rel="stylesheet" href="user_Review_View.css?after" type="text/css" >
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
        
        String sessionId = (String) session.getAttribute("user_Id"); // 세션 아이디 가져오기
        String review_Id = rs.getString("USER_ID");
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
            	<input type="button" onclick="allList()" value="전체목록">
            </div>
		<%     
            if(sessionId.equals("admin")){
		%>
		    <div style="display: inline;">
            	<input type="button" onclick="mainHome('<%=sessionId%>')" value="회원목록">
	            <input type="button" value="수정하기" onclick="reviewU('<%=R_NO%>','<%=rs.getString("SCM_SHOPNAME")%>','<%=rs.getString("ORDER_DATE")%>','<%=rs.getString("SCM_MENU")%>')">
	            <input type="button" value="삭제하기" onclick="reviewD('<%=R_NO%>')">
	            <input type="button" value="돌아가기" onclick="listMain('<%=sessionId%>')">
            </div>
		<% }
		
		 if(sessionId != null && (review_Id.equals(sessionId))){ %>
            <div style="display: inline;">
	            <input type="button" value="수정하기" onclick="reviewU('<%=R_NO%>','<%=rs.getString("SCM_SHOPNAME")%>','<%=rs.getString("ORDER_DATE")%>','<%=rs.getString("SCM_MENU")%>')">
	            <input type="button" value="삭제하기" onclick="reviewD('<%=R_NO%>')">
	            <input type="button" value="돌아가기" onclick="listMain('<%=sessionId%>')">
            </div>
        <%
			}
        %>
    </form>
    <% conn.close(); %>
</body>
</html>
<script>
	function mainHome(sessionId){
		location.href="9_admin_view.jsp?user_Id="+sessionId;
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
	function listMain(user_Id){
		location.href="927_user_Review_Order.jsp?user_Id="+user_Id;
	}
		
</script>