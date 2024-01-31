<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체회원가입</title>
<link rel="stylesheet" href="user_Add.css">
</head>
<body>
    <div class="signupContainer">
        <div class="signupBox">
            <h2>[ 업체 회원가입 ]</h2>
            <form name="scmUser_Add">
                <div class="inLineBox">
                    <div>아이디 : <input type="text" id="scm_Id" name="scm_Id" required class="textBox1"></div>
                    <input type="button" value="중복확인" onclick="" class="checkBtn">
                </div>
                <div>비밀번호 : <input type="password" id="scm_Pw" name="scm_Pw" required class="textBox1"></div>
                <div>비밀번호 확인 : <input type="password" id="scm_Pw2" name="scm_Pw2" required class="textBox1"></div>
                <div>상호명 : <input type="text" id="scm_ShopName" name="scm_ShopName" class="textBox1"></div>
                <div>사업자번호 : <input type="text" id="scm_Number" name="scm_Number" class="textBox1"></div>
                <div>사업자이름 : <input type="text" id="scm_Name" name="scm_Name" class="textBox1"></div>
                <div>사업자주소 : <input type="text" id="scm_Address" name="scm_Address" class="textBox1"></div>
                <div> 성별 : 
                    <label><input type="radio" id="csm_Gender" name="csm_Gender" value="남자"> 남자</label>
                    <label><input type="radio" id="csm_Gender" name="csm_Gender" value="여자"> 여자</label>
                </div> 
                <div>연락처 :
                    <input type="text" id="scm_Phone1" name="scm_Phone1" class="phone">-
                    <input type="text" id="scm_Phone2" name="scm_Phone2" class="phone">-
                    <input type="text" id="scm_Phone3" name="scm_Phone3" class="phone">
                </div>

                <div>이메일 : 
                    <input type="text" id="scm_Email" name="scm_Email" class="textBox1">
                </div>
                <div>업종 : 
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="한식"> 한식</label>
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="중식"> 중식</label>
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="양식"> 양식</label>
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="일식"> 일식</label>
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="카페"> 카페</label>
                </div>  
                        
                        <div><input type="button" value="가입하기" onclick="" class="addBtn"></div>
                    </form>
                    <p>이미 계정이 있으신가요? <a href="#">로그인</a></p>
                </div>
            </div>
        
 </body>
</html>