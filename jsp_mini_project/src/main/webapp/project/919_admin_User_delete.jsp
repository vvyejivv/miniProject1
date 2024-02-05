<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원삭제</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String user_Id[] = request.getParameterValues("user_Checkbox");
		String sql = "DELETE FROM KYJ_USER WHERE USER_ID IN(";	
		for(int i=0; i<user_Id.length; i++){
			sql += "'" + user_Id[i] + "'";
			if(i != user_Id.length-1){
				sql += ",";
			}
		}
		sql += ")";
	       try {
	            int result = stmt.executeUpdate(sql);
	            
	            if (result > 0) {
	    %>
	                <script>
	                    alert("삭제되었습니다.");
	                    window.location.href = "9_admin_view.jsp";
	                </script>
	    <%
	            } else {
	    %>
	                <script>
	                    alert("삭제 실패했습니다. 다시 시도해주세요.");
	                    window.location.href = "9_admin_view.jsp";
	                </script>
	    <%
	            }
	        } catch (SQLException e) {
	    %>
	            <script>
	                alert("삭제 중 오류가 발생했습니다. 다시 시도해주세요.");
	                window.location.href = "9_admin_view.jsp";
	            </script>
	    <%
	        }
	    %>
</body>
</html>