<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 선택창</title>
<link rel="stylesheet" href="user_AddChoose.css">
</head>
<body>
    <div class="signupContainer">
        <div class="signupBox">
            <div class="signupButtonWrapper">
                <button class="signupButton" onclick="userUsr_Add(2)">개인회원</button>
            </div>
            <div class="signupButtonWrapper">
                <button class="signupButton" onclick="userUser_Add(1)">업체회원</button>
            </div>
            <div class="loginText">이미 계정이 있으신가요? <a href="1_home.jsp">로그인</a></div>
        </div>
    </div>
</body>

</html>
<script>
	function userUsr_Add(code){
		location.href="4_csm_User_Add.jsp?code="+code;
	}
	function userUser_Add(code){
		location.href="3_scm_User_Add.jsp?code="+code;
	}
</script>