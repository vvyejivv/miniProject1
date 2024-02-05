<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>아이디 중복 체크</title>
</head>
<body>
    <form name="checkId">
        <%@ include file="dbconn.jsp"%>
        <%
        request.setCharacterEncoding("UTF-8");
        String user_Id = request.getParameter("user_Id");
        String code = request.getParameter("code");
        String sql = "SELECT * FROM KYJ_USER WHERE USER_ID = '" + user_Id + "'";
        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {
            out.println("중복된 아이디 입니다.");
        %>
        <div>
            <input type= "text" name="user_Id"> 
            <input type="button" value="중복체크" onclick="idCheck('<%=code%>')">
        </div>
        <%
        } else {
            out.println("사용가능한 아이디 입니다.");
        }
        %>
        <div>
            <input type="button" value="닫기" onclick="popClose('<%=user_Id%>', '<%=code%>')">
        </div>
    </form>
   <% conn.close(); %>
</body>
</html>
<script>
    function popClose(user_Id, code) {
        window.opener.document.userUser_Add.user_Id.value = user_Id;
        window.opener.document.userUser_Add.code.value = code;
        window.close();
    }

    function idCheck(code) {
        location.href = "7_user_Id_Check.jsp?user_Id=" + document.checkId.user_Id.value + "&code=" + code;
    }
</script>
