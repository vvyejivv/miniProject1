<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 데이터</title>
</head>
<body>
    <%@ include file="dbconn.jsp"%>
    
    <% 
        String user_Id = request.getParameter("user_Id");
        String user_Pw = request.getParameter("user_Pw");

        String sql = "SELECT * FROM KYJ_USER WHERE USER_ID = '" + user_Id + "' AND USER_PW = '" + user_Pw + "'";
        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {
            if (rs.getInt("CNT") >= 4) {
    %>
                <script>
                    alert("비밀번호 5번 이상 실패했습니다. 관리자에게 문의하세요.");
                    window.location.href = "1_home.jsp";
                </script>
    <%
            } else {
            	session.setAttribute("user_Id", rs.getString("USER_ID"));
                session.setAttribute("user_Name", rs.getString("USER_NAME"));
                session.setAttribute("code", rs.getString("CODE"));
                
                if (rs.getString("CODE").equals("0")) {
    %>
                    <script>
                        alert("관리자로 로그인하셨습니다.");
                        window.location.href = "9_admin_view.jsp";
                    </script>
    <%
                } else {
                    sql = "UPDATE KYJ_USER SET CNT = 0 WHERE USER_ID = '" + user_Id + "'";
                    stmt.executeUpdate(sql);
                    
                    response.sendRedirect("8_user_login_view.jsp?user_Id=" + user_Id);
                }
            }
        } else {
            String idSql = "SELECT * FROM KYJ_USER WHERE USER_ID = '" + user_Id + "'";
            ResultSet rsId = stmt.executeQuery(idSql);
            
            if (rsId.next()) {
                int cnt = rsId.getInt("CNT");
                if ((cnt + 1) >= 5) {
    %>
                    <script>
                        alert("비밀번호 5번 이상 실패했습니다. 관리자에게 문의하세요.");
                        window.location.href = "1_home.jsp";
                  
                    </script>
    <%
                } else {
    %>
                    <script>
                        alert("<%= (cnt + 1) %>번 비밀번호를 틀리셨습니다. 5번 이상 시 계정 사용이 중지됩니다.");
                        window.location.href = "1_home.jsp";
                    </script>
    <%
                    stmt.executeUpdate("UPDATE KYJ_USER SET CNT = CNT+1 WHERE USER_ID ='" + user_Id + "'");
                }
            } else {
    %>
                <script>
                    alert("아이디가 없습니다.");
                    window.location.href = "1_home.jsp";
                </script>
    <%
            }
        }
    %>
</body>
</html>
