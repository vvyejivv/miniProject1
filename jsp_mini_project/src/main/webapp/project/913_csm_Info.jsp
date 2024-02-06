<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원수정</title>
<link rel="stylesheet" href="user_Add.css?after" type="text/css" />
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String code = request.getParameter("code");
		String user_Id = request.getParameter("user_Id");

		String sql = "SELECT * FROM KYJ_USER WHERE USER_ID = '" + user_Id + "'";
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
	%>
    <div class="signupContainer">
        <div class="signupBox">
            <h2>[ <%=user_Id%> 님의 회원정보수정 ]</h2>
            <form name="scm_update" action="915_user_Info_Update.jsp" onsubmit="return validateForm()">
                <div class="inLineBox">
                    <div>
                    	아이디 : 
                    	<input type="text" id="user_Id" class="textBox1" value="<%=user_Id%>" disabled>
	                    <input name="user_Id" value="<%=user_Id%>" hidden>
                    </div>
                    <input name=code value="<%=code%>" hidden>
                </div>
                <div>
	                비밀번호 : 
	                	<input type="password" id="user_Pw" name="user_Pw" required class="textBox1" oninput="validatePassword()">
	                	<div id="passwordErrorMessage" style="font-size: 12px;"></div>
	            </div>
	                
	            <div>
	                비밀번호 확인 : 
	                	<input type="password" id="user_Pw2" name="user_Pw2" required class="textBox1" oninput="validatePasswordConfirmation()">
	                	<div id="passwordConfirmationErrorMessage" style="font-size: 12px;"></div>
	            </div>
                <div>
                	이름 : 
                	<input type="text" id="user_Name" class="textBox1" value="<%=rs.getString("USER_NAME")%>" disabled>
                	<input type="text" name="user_Name" class="textBox1" value="<%=rs.getString("USER_NAME")%>" hidden>
                </div>
                <div>
                	생년월일 : 
                	<input type="text" id="user_Date" class="textBox1" value="<%=rs.getString("USER_DATE")%>" disabled>
                	<input type="text"  name="user_Date" class="textBox1" value="<%=rs.getString("USER_DATE")%>" hidden>
                </div>
                <div>
                	별명 : 
                		<input type="text" id="user_NikName" class="textBox1">
                		<input name="user_NikName" value="<%=rs.getString("USER_NIKNAME")%>" hidden>
                </div>
                <div> 성별 : 
                    <label><input type="radio" id="user_Gender" name="user_Gender" value="남자"> 남자</label>
                    <label><input type="radio" id="user_Gender" name="user_Gender" value="여자"> 여자</label>
                </div> 
                <div>주소 : <input type="text" id="user_Address" name="user_Address" class="textBox1"></div>
                <div>연락처 :
                    <input type="text" id="user_Phone1" name="user_Phone1" class="phone">-
                    <input type="text" id="user_Phone2" name="user_Phone2" class="phone">-
                    <input type="text" id="user_Phone3" name="user_Phone3" class="phone">
                </div>

                <div>이메일 : 
                    <input type="text" id="user_Email" name="user_Email" class="textBox1">
                </div>
                <div> 선호하는 음식 종류 : 
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="한식"> 한식</label>
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="중식"> 중식</label>
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="양식"> 양식</label>
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="일식"> 일식</label>
                    <label><input type="radio" id="csm_Type" name="csm_Type" value="카페"> 카페</label>
                </div> 
                        
                        <div><input type="submit" value="수정하기" class="addBtn"></div>
              </form>
                    <div><input type="button" value="회원탈퇴" class="addBtn" onclick="deleteU('<%=user_Id%>')"></div>
                    <div><input type="button" value="되돌아가기" class="addBtn" onclick="back('<%=user_Id%>')"></div>
                </div>
            </div>
  <% conn.close(); %>      
</body>
</html>
<script>
	function back(user_Id){
		location.href = "8_csm_login_view.jsp?user_Id=" + user_Id;
	}
	function deleteU(user_Id){
		if(confirm("정말 회원탈퇴 하시겠습니까?")){			
		location.href = "916_user_delete.jsp?user_Id=" + user_Id;
		}
	}
	/* 비밀번호 확인  */
	
    function displayErrorMessage(elementId, message) {
        document.getElementById(elementId).innerHTML = message;
        document.getElementById(elementId).style.color = "red";
    }

    function hideErrorMessage(elementId) {
        document.getElementById(elementId).innerHTML = "";
    }

    function validatePassword() {
        var password = document.getElementById("user_Pw").value;
        var regex = /^[a-zA-Z]{3}\d{3}$/;
        var errorMessageElement = "passwordErrorMessage";

        if (!regex.test(password)) {
            displayErrorMessage(errorMessageElement, "비밀번호는 알파벳 3자리 + 숫자 3자리 총 6자리이어야 합니다.");
            return false;
        }

        hideErrorMessage(errorMessageElement);
        return true;
    }

    function validatePasswordConfirmation() {
        var password1 = document.getElementById("user_Pw").value;
        var password2 = document.getElementById("user_Pw2").value;
        var errorMessageElement = "passwordConfirmationErrorMessage";

        if (password1 !== password2) {
            displayErrorMessage(errorMessageElement, "비밀번호가 일치하지 않습니다.");
            return false;
        }else{
	        hideErrorMessage(errorMessageElement);
	        return true;        	
        }

    }
    /* 비밀번호 틀렸을 시 안내 메시지  */
    function validateForm() {
        var isPasswordValid = validatePassword();
        var isPasswordConfirmationValid = validatePasswordConfirmation();

        if (!isPasswordValid || !isPasswordConfirmationValid) {
            alert("비밀번호가 서로 다릅니다. 다시 확인해주세요.");
            return false;
        }
        return true;
    }
</script>