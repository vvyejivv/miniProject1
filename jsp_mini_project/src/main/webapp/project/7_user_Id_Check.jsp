<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>아이디 중복 체크</title>
    <link rel="stylesheet" href="user_Id_Check.css">
</head>
<body>
    <form name="checkId">
        <%@ include file="dbconn.jsp"%>
        <%
        request.setCharacterEncoding("UTF-8");
        String user_Id = request.getParameter("user_Id");
        String code = request.getParameter("code");
     	// 정규 표현식을 사용하여 사용자 ID 형식 검사
        String regex = "^[a-zA-Z]{4}\\d{4}$";
        if (user_Id.matches(regex)) {
            String sql = "SELECT * FROM KYJ_USER WHERE USER_ID = '" + user_Id + "'";
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                %>
                    <div>중복된 아이디 입니다.</div>
                    <div>
                        <input type="text" name="user_Id" style="border-color : red;"> 
                        <input type="button" value="중복체크" onclick="idCheck('<%=code%>')">
                    </div>
                <%
                    } else {
                %>
                    <div>사용 가능한 아이디 입니다.</div>
                <%
                    }
                } else {
                %>
                    <div>알파벳 4자리 + 숫자 4자리의 아이디를 입력해주세요!</div>
                    <div>
                        <input type="text" name="user_Id" style="border-color : red;"> 
                        <input type="button" value="중복체크" onclick="idCheck('<%=code%>')">
                    </div>
	        <%
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
