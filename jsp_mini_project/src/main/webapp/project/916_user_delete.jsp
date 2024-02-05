<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원삭제페이지</title>
</head>
<body>
<%@ include file="dbconn.jsp"%>
<%
	String user_Id = request.getParameter("user_Id");
	String code = request.getParameter("code");
	String sql = ("DELETE FROM KYJ_USER "
				+"WHERE USER_ID = '" + user_Id + "'");
	int cnt = stmt.executeUpdate(sql);
	
	if(cnt>0){
	%>
	<script>
	<% if("admin".equals(session.getAttribute("user_Id"))){ %>
		alert("삭제되었습니다.");
        location.href = "9_admin_view.jsp";
    <% } else { %>
		alert("삭제되었습니다.");
        location.href = "1_home.jsp";                        
    <% } %>
	</script>
	<%
	}else{
	%>
	<script>
	  alert("다시 시도해주세요.");
      <% if("1".equals(code)){ %>
          location.href = "8_scm_login_view.jsp?user_Id=" + "<%=user_Id%>";
      <% } else if("2".equals(code)){ %>
          location.href = "8_csm_login_view.jsp?user_Id=" + "<%=user_Id%>";         
      <% } else { %>
          location.href = "1_home.jsp";                        
      <% } %>
	</script>
	<%
	}
%>
</body>
</html>