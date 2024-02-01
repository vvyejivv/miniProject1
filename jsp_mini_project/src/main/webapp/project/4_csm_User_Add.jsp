<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 회원가입</title>
<link rel="stylesheet" href="user_Add.css">
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String code = request.getParameter("code");
	%>
    <div class="signupContainer">
        <div class="signupBox">
            <h2>[ 개인회원 회원가입 ]</h2>
            <form name="csmUser_Add" action="6_csm_User_Add_save.jsp">
                <div class="inLineBox">
                    <div>아이디 : <input type="text" id="csm_Id" name="csm_Id" required class="textBox1"></div>
                    <input type="button" value="중복확인" onclick="" class="checkBtn">
                    <input name=code value="<%=code%>" hidden>
                </div>
                <div>비밀번호 : <input type="password" id="csm_Pw" name="csm_Pw" required class="textBox1"></div>
                <div>비밀번호 확인 : <input type="password" id="csm_Pw2" name="csm_Pw2" required class="textBox1"></div>
                <div>이름 : <input type="text" id="csm_Name" name="csm_Name" class="textBox1"></div>
                <div>생년월일 : <input type="text" id="csm_Date" name="csm_Date" class="textBox1"></div>
                <div>별명 : <input type="text" id="csm_NikName" name="csm_NikName" class="textBox1"></div>
                <div> 성별 : 
                    <label><input type="radio" id="csm_Gender" name="csm_Gender" value="남자"> 남자</label>
                    <label><input type="radio" id="csm_Gender" name="csm_Gender" value="여자"> 여자</label>
                </div> 
                <div>주소 : <input type="text" id="csm_Address" name="csm_Address" class="textBox1"></div>
                <div>연락처 :
                    <input type="text" id="csm_Phone1" name="csm_Phone1" class="phone">-
                    <input type="text" id="csm_Phone2" name="csm_Phone2" class="phone">-
                    <input type="text" id="csm_Phone3" name="csm_Phone3" class="phone">
                </div>

                <div>이메일 : 
                    <input type="text" id="csm_Email" name="csm_Email" class="textBox1">
                </div>
                <div> 선호하는 음식 종류 : 
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="한식"> 한식</label>
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="중식"> 중식</label>
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="양식"> 양식</label>
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="일식"> 일식</label>
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="카페"> 카페</label>
                </div> 
                        
                        <div><input type="submit" value="가입하기" onclick="" class="addBtn"></div>
                    </form>
                    <p>이미 계정이 있으신가요? <a href="6_user_Login_DB.jsp">로그인</a></p>
                </div>
            </div>
        
</body>
</html>