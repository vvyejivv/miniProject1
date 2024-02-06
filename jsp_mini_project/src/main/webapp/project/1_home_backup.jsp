<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈화면</title>
<link rel="stylesheet" href="home.css">
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	String sql = "SELECT * FROM KYJ_SCM ";
	String keyword = request.getParameter("keyword");
	if(keyword != null){
		sql += "WHERE SCM_SHOPNAME LIKE '%" + keyword + "%' OR SCM_TYPE LIKE '%" + keyword + "%'";
	} else {
		keyword = "";
	}
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<header>
		<a href="1_home.jsp"> <img src="image/logomimi.png" alt="로고"
			width="350px">
		</a>
	</header>

	<section>
		<div class="foodMenu-buttons">
			<button class="foodButton" onclick="food('k')">한식</button>
			<button class="foodButton" onclick="food('c')">중식</button>
			<button class="foodButton" onclick="food('u')">양식</button>
			<button class="foodButton" onclick="food('j')">일식</button>
			<button class="foodButton" onclick="food('cafe')">카페</button>
		</div>
		<div class="serchBox">
			<input type="text" id="searchInput" name="keyword" placeholder="음식종류(ex:한식) 또는 가게명을 입력해보세요!" autofocus>
			<input type="button" value="검색하기" onclick="search_SCM()" id="search_SCM">
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
						<input type="text" id="user_Id" name="user_Id" required> 
						<label for="password">비밀번호:</label>
						<input type="password" id="user_Pw" name="user_Pw" required>
						<input type="submit" value="로그인"> 
						<input type="button" value="회원가입" onclick="user_Add()">
					</form>
				</div>
			</div>
			<div class="foodList_Box">
				<div class="fl_Box1">
					<a href="#" onclick="food('k')"> <img src="image/kfood2.jpg"
						alt="한식"> <span class="image-text">한식</span>
					</a>
				</div>
				<div class="fl_Box2">
					<a href="#" onclick="food('c')"> <img src="image/cfood.jpg"
						alt="중식"> <span class="image-text">중식</span>
					</a>
				</div>
				<div class="fl_Box3">
					<a href="#" onclick="food('j')"> <img src="image/jfood.jpg"
						alt="일식"> <span class="image-text">일식</span>
					</a>
				</div>
				<div class="fl_Box4">
					<a href="#" onclick="food('u')"> <img src="image/ufood.jpg"
						alt="양식"> <span class="image-text">양식</span>
					</a>
				</div>
				<div class="fl_Box5">
					<a href="#" onclick="food('cafe')"> <img
						src="image/cafefood.jpg" alt="카페"> <span class="image-text">카페</span>
					</a>
				</div>
				<div class="fl_Box6">
					<a href="#" onclick="review()"> <img src="image/kfood.jpg"
						alt="더보기"> <span class="image-text">전체 리뷰 확인</span>
					</a>
				</div>
			</div>
			<div class="foodList_Box2" style="display: none">
				<div class="kfood">
					<table border="1">
						<span>한식 인기프랜차이즈</span>
						<tr>
							<th><img src="../project/image/본죽.jpg" width="250"></th>
							<th><img src="../project/image/한솥.jpg" width="250"></th>
							<th><img src="../project/image/두찜.png" width="250" height="250"></th>
						</tr>
						<tr>
							<td>본죽</td>
							<td>한솥도시락</td>
							<td>두찜</td>
						</tr>
						<tr>
							<td>⭐4.9</td>
							<td>⭐4.8</td>
							<td>⭐4.7</td>
						</tr>
						<tr>
							<th><img src="../project/image/고봉민.jpg" width="250" height="250"></th>
							<th><img src="../project/image/큰맘.png" width="250"></th>
							<th><img src="../project/image/원할머니.jpg" width="250" height="250"></th>
						</tr>
						<tr>
							<td>고봉민김밥</td>
							<td>큰맘할매순대국</td>
							<td>원할머니보쌈족발</td>
						</tr>
						<tr>
							<td>⭐4.6</td>
							<td>⭐4.7</td>
							<td>⭐4.9</td>
						</tr>
					</table>
				</div>
				<div class="cfood" style="display: none">
					<table border="1">
						<span>중식 인기프랜차이즈</span>
						<tr>
							<th><img src="../project/image/짬뽕지존.png" width="250"></th>
							<th><img src="../project/image/홍콩반점.png" width="250"></th>
							<th><img src="../project/image/탕화쿵푸.jpg" width="250" height="250"></th>

						</tr>
						<tr>
							<td>짬뽕지존</td>
							<td>홍콩반점</td>
							<td>탕화쿵푸</td>
						</tr>
						<tr>
							<td>⭐4.9</td>
							<td>⭐4.8</td>
							<td>⭐4.7</td>
						</tr>

					</table>
				</div>
				<div class="jfood" style="display: none">
					<table border="1">
						<span>일식 인기프랜차이즈</span>
						<tr>
							<th><img src="../project/image/상무초밥.jpg" width="250"></th>
							<th><img src="../project/image/미소야.png" width="250"></th>
							<th><img src="../project/image/저스트텐동.jpg" width="250" height="250"></th>
						</tr>
						<tr>
							<td>상무초밥</td>
							<td>미소야</td>
							<td>저스트텐동</td>
						</tr>
						<tr>
							<td>⭐4.9</td>
							<td>⭐4.8</td>
							<td>⭐4.7</td>
						</tr>
					</table>
				</div>
				<div class="ufood" style="display: none">
					<table border="1">
						<span>양식 인기프랜차이즈</span>
						<tr>
							<th><img src="../project/image/맥도날드.png" width="250"></th>
							<th><img src="../project/image/아웃백.jpg" width="250" height="250"></th>
							<th><img src="../project/image/니뽕내뽕.jpg" width="250" height="250"></th>
						</tr>
						<tr>
							<td>맥도날드</td>
							<td>아웃백</td>
							<td>니뽕내뽕</td>
						</tr>
						<tr>
							<td>⭐4.9</td>
							<td>⭐4.8</td>
							<td>⭐4.7</td>
						</tr>
					</table>
				</div>
				<div class="cafefood" style="display: none">
					<table border="1">
						<span>카페 인기프랜차이즈</span>
						<tr>
							<th><img src="../project/image/빽다방.png" width="250"></th>
							<th><img src="../project/image/메가커피.jpeg" width="250"></th>
							<th><img src="../project/image/컴포즈.png" width="250" height="250"></th>
						</tr>
						<tr>
							<td>빽다방</td>
							<td>메가커피</td>
							<td>컴포즈커피</td>
						</tr>
						<tr>
							<td>⭐4.9</td>
							<td>⭐4.8</td>
							<td>⭐4.7</td>
						</tr>
					</table>
				</div>
			</div>
			<% if(keyword != null && !keyword.equals("")){
			%>
				<div id="searchSCM" class="foodList_Box2" >
				<table border="1">
						<span><%=keyword%>의 검색결과</span>
						<tr>
							<th style="color: black;">NO</th>
							<th style="color: black;">상호명</th>
							<th style="color: black;">주소</th>
						</tr>
						<%
							int cnt = 0;
							while(rs.next()){
								++cnt;
						%>
							<tr>
								<td><%=cnt%></td>
								<td><%=rs.getString("SCM_SHOPNAME") %></td>
								<td><%=rs.getString("USER_ADDRESS") %></td>
							</tr>
						<%
							}
						%>
					</table>
				</div>
			<%	
			} 
			 %>
			

	</div>

</section>
	<!-- 	<footer>

		<p>&copy;</p>
	</footer> -->

</body>

</html>
<script>
	function user_Add() {
		location.href = "2_user_Add_Choose.jsp";
	}
	function review(){
		location.href="920_user_Review_List.jsp";
	}
	/* 검색창  */
	function search_SCM(){
		var searchInput = document.querySelector("#searchInput");
	    var keyword = searchInput.value;
	    
	    // 수정: 검색 결과를 보여주는 div의 ID 사용
	    var searchSCM = document.querySelector("#searchSCM");

	    // 검색어가 비어있지 않으면 검색 결과를 보여줌
	    if (keyword.trim() !== "") {
	        // 검색 결과를 표시하는 페이지로 이동
	        location.href = "1_home.jsp?keyword=" + keyword;
	        // 검색 결과를 보여주는 div의 display를 'block'으로 변경
	        searchSCM.style.display = 'block';

	    } else {
	        // 검색어가 비어있을 경우, 메시지를 띄우거나 다른 동작을 수행할 수 있음
	        alert("검색어를 입력하세요.");
	    }

	} 
	
	function food(foodType) {
		var foodList_Box2 = document.querySelector('.foodList_Box2');
		if (foodList_Box2.style.display === 'none') {
			foodList_Box2.style.display = 'block';
		} else {
			foodList_Box2.style.display = 'none';
		}

		// 해당하는 음식 타입의 내용을 보여주거나 숨깁니다.
		var contentToShow = document.querySelector('.' + foodType + 'food');
		if (contentToShow) {
			contentToShow.style.display = 'block';
		}

		// 다른 음식 종류에 대한 내용을 숨깁니다.
		var allContentsToHide = document
				.querySelectorAll('.foodList_Box2 > div:not(.' + foodType
						+ 'food)');
		if (allContentsToHide) {
			allContentsToHide.forEach(function(contentToHide) {
				contentToHide.style.display = 'none';
			});
		}
	}
</script>