<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 완료</title>
</head>
<link rel="stylesheet" href="home.css?after" type="text/css" />
<body>
<%@ include file="dbconn.jsp"%>
<%
		String user_Id = request.getParameter("user_Id");
		String sql="SELECT * FROM KYJ_USER WHERE USER_ID = '" + user_Id + "'";
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		String code = rs.getString("CODE");
%>
<header>
			<a href="8_user_login_view.jsp">
				<img src="image/logomimi.png" alt="로고" width="350px">
			</a>
			<div>
		<% 
		if(request.isRequestedSessionIdValid()){
				out.print("세션이 있다");
				}else{
					out.print("세션이 없다.");
				}
		%>
		</div>
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
					<h3><%=rs.getString("USER_NAME")%>님 환영합니다.</h3>
                </div>
                <form name="login_user">
					<div class="profile">
                    <img src="image/remi.jpg">
                  	</div>
                    <input type="button" value="주문내역" onclick="user_OrderList('<%=rs.getString("USER_ID")%>')">
                    <input type="button" value="작성한 리뷰" onclick="user_Review('<%=rs.getString("USER_ID")%>')">
                    <input type="button" value="내 정보 수정" onclick="user_Info_Update('<%=rs.getString("USER_ID")%>',<%=code%>)">
                    <input type="button" value="로그아웃" onclick="user_LogOut()">
                    </form>
				</div>
			</div>
		<div class="foodList_Box">
			<div class="fl_Box1">
				<a href="#"> 
					<img src="image/kfood2.jpg" alt="한식"> 
					<span class="image-text">한식</span>
				</a>
			</div>
			<div class="fl_Box2">
				<a href="#"> <img src="image/cfood.jpg" alt="중식"> 
				<span class="image-text">중식</span>
				</a>
			</div>
			<div class="fl_Box3">
				<a href="#"> <img src="image/jfood.jpg" alt="일식"> 
				<span class="image-text">일식</span>
				</a>
			</div>
			<div class="fl_Box4">
				<a href="#"> <img src="image/ufood.jpg" alt="양식"> 
				<span class="image-text">양식</span>
				</a>
			</div>
			<div class="fl_Box5">
				<a href="#"> <img src="image/cafefood.jpg" alt="카페"> 
				<span class="image-text">카페</span>
				</a>
			</div>
			<div class="fl_Box6">
				<a href="#"> <img src="image/kfood.jpg" alt="더보기"> 
				<span class="image-text">더보기</span>
				</a>
			</div>
		</div>
	</div>
	<div class="shop_List">
            <table border="1">
                <title>추천 가게</title>
                <tr>
                    <td>NO</td>
                    <td>상호명</td>
                    <td>종류</td>
                    <td>주소</td>
                    <td>연락처</td>
                </tr>
                <tr>
                    <td></td>
                    <td><%=rs.getString("USER_NIKNAME")%></td>
                    <td><%=rs.getString("USER_NIKNAME")%></td>
                    <td><%=rs.getString("USER_NIKNAME")%></td>
                    <td><%=rs.getString("USER_NIKNAME")%></td>
                </tr>
            </table>
        </div>

</section>
<!-- <footer>

	<p>&copy;</p>
</footer> -->
<% conn.close(); %>
</body>

</html>
<script>
	/* 주문내역 */
	function user_OrderList(user_Id){
		location.href = "911_user_OrderList.jsp?user_Id="+user_Id;		
	}
	/* 내 정보 수정  */
	function user_Info_Update(user_Id,code){
		if(code == "1"){
			location.href = "912_scm_Info_Update.jsp?user_Id="+user_Id+"&code="+code;			
		}else{		
			location.href = "913_csm_Info_Update.jsp?user_Id="+user_Id+"&code="+code;			
		}
	}
	/* 로그아웃  */
	function user_LogOut(){
		if(confirm("로그아웃 하시겠습니까?")){
		location.href = "910_user_Logout.jsp";			
		}
	}
</script>