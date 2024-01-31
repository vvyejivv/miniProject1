<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈화면</title>
<link rel="stylesheet" href="home.css">
</head>
<header>
        <img src="../image/logomimi.png" alt="로고" width="350px">
    </header>

    <section>
        <div class="foodMenu-buttons">
            <button class="foodButton" onclick="">한식</button>
            <button class="foodButton" onclick="">중식</button>
            <button class="foodButton" onclick="">양식</button>
            <button class="foodButton" onclick="">일식</button>
            <button class="foodButton" onclick="">카페</button>
        </div>
        <div class="serchBox">
            <input type="text" placeholder="음식을 입력해보세요!" autofocus>
            <input type="submit" value="검색">
        </div>

        <!-- 로그인 -->
        <div class="loginBox">
            <h3>로그인</h3>
            <form>
                <label for="username">아이디:</label>
                <input type="text" id="username" name="username" required>

                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" required>

                <input type="submit" value="로그인">
                <input type="button" value="회원가입" onclick="user_Add()">
            </form>
        </div>
    </section>

    <footer>

        <p>&copy; </p>
    </footer>

</body>

</html>
<script>
	function user_Add(){
		location.href="2_user_AddChoose.jsp";
	}
</script>