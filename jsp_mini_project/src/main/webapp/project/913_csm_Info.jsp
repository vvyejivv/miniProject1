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
            <form name="scm_update" action="915_user_Info_Update.jsp">
                <div class="inLineBox">
                    <div>
                    	아이디 : 
                    	<input type="text" id="user_Id" class="textBox1" value="<%=user_Id%>" disabled>
	                    <input name="user_Id" value="<%=user_Id%>" hidden>
                    </div>
                    <input name=code value="<%=code%>" hidden>
                </div>
                <div>비밀번호 : <input type="password" id="user_Pw" name="user_Pw" required class="textBox1"></div>
                <div>비밀번호 확인 : <input type="password" id="user_Pw2" name="user_Pw2" required class="textBox1"></div>
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
</script>