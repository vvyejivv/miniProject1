<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈화면</title>
</head>
<link rel="stylesheet" href="home.css?after" type="text/css" />
<body>
	<header>
		<img src="image/logomimi.png" alt="로고" width="350px">
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
			<input type="text" placeholder="메뉴 또는 위치를 입력해보세요!" autofocus>
			<input type="button" value="검색" onclick="">
		</div>
		<div class="foodList">
			<!-- 로그인 -->
			<div class="login">
				<div class="loginBox">
					<div>
						<h3>로그인</h3>

					</div>
					<form name="login_user" action="6_user_Login_DB.jsp">
						<label for="username">아이디:</label> 
						<input type="text"id="user_Id" name="user_Id" required>
						<label for="password">비밀번호:</label> 
						<input type="password" id="user_Pw" name="user_Pw" required> 
						<input type="submit" value="로그인"> 
						<input type="button" value="회원가입" onclick="user_Add()">
					</form>
				</div>
			</div>
			<div class="foodList_Box">
				<div class="fl_Box1">
					<a href="#"> <img src="image/kfood2.jpg" alt="한식"> <span
						class="image-text">한식</span>
					</a>
				</div>
				<div class="fl_Box2">
					<a href="#"> <img src="image/cfood.jpg" alt="중식"> <span
						class="image-text">중식</span>
					</a>
				</div>
				<div class="fl_Box3">
					<a href="#"> <img src="image/jfood.jpg" alt="일식"> <span
						class="image-text">일식</span>
					</a>
				</div>
				<div class="fl_Box4">
					<a href="#"> <img src="image/ufood.jpg" alt="양식"> <span
						class="image-text">양식</span>
					</a>
				</div>
				<div class="fl_Box5">
					<a href="#"> <img src="image/cafefood.jpg" alt="카페"> <span
						class="image-text">카페</span>
					</a>
				</div>
				<div class="fl_Box6">
					<a href="#"> <img src="image/kfood.jpg" alt="더보기"> <span
						class="image-text">더보기</span>
					</a>
				</div>
			</div>

		</div>

	</section>
	<footer>

		<p>&copy;</p>
	</footer>

</body>

</html>
<script>
	function user_Add(){
		location.href="2_user_Add_Choose.jsp";
	}

</script>