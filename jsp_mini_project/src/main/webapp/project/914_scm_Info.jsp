<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체회원정보수정</title>
<link rel="stylesheet" href="user_Add.css?after" type="text/css" />
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
		String code = request.getParameter("code");
		String user_Id = request.getParameter("user_Id");
		
		String sql = "SELECT * FROM KYJ_USER U INNER JOIN KYJ_SCM S ON U.USER_ID = S.USER_ID WHERE S.USER_ID = '" + user_Id + "'";
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
                    <input name="code" value="<%=code%>" hidden>
                </div>
                <div>비밀번호 : <input type="password" id="user_Pw" name="user_Pw" required class="textBox1"></div>
                <div>비밀번호 확인 : <input type="password" id="user_Pw2" name="user_Pw2" required class="textBox1"></div>
                <div>
                	상호명 : 
                	<input type="text" id="user_ShopName" class="textBox1" value="<%=rs.getString("SCM_SHOPNAME")%>" disabled>
                	<input type="text" name="user_ShopName" value="<%=rs.getString("SCM_SHOPNAME")%>" hidden>
                </div>
                <div>
                	사업자번호 : 
                	<input type="text" id="user_Number" class="textBox1" value="<%=rs.getString("SCM_NUMBER")%>" disabled>
                	<input type="text" name="user_Number" value="<%=rs.getString("SCM_NUMBER")%>" hidden>
                </div>
                <div>사업자이름 : <input type="text" id="user_Name" name="user_Name" class="textBox1"></div>
                <div>사업자주소 : <input type="text" id="user_Address" name="user_Address" class="textBox1"></div>
                <div> 성별 : 
                    <label><input type="radio" id="user_Gender" name="user_Gender" value="남자"> 남자</label>
                    <label><input type="radio" id="user_Gender" name="user_Gender" value="여자"> 여자</label>
                </div> 
                <div>연락처 :
                    <input type="text" id="user_Phone1" name="user_Phone1" class="phone">-
                    <input type="text" id="user_Phone2" name="user_Phone2" class="phone">-
                    <input type="text" id="user_Phone3" name="user_Phone3" class="phone">
                </div>

                <div>이메일 : 
                    <input type="text" id="user_Email" name="user_Email" class="textBox1">
                </div>
                <div>업종 : 
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="한식"> 한식</label>
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="중식"> 중식</label>
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="양식"> 양식</label>
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="일식"> 일식</label>
                    <label><input type="radio" id="scm_Type" name="scm_Type" value="카페"> 카페</label>
                </div>  
                        
                        <div><input type="submit" value="수정하기" class="addBtn"></div>
                    </form>
                    <div><input type="button" value="되돌아가기" class="addBtn" onclick="back('<%=user_Id%>')"></div>
                </div>
            </div>
            <%
            	conn.close();
            %>
        
 </body>
</html>
<script>
	function back(user_Id){
		location.href = "8_scm_login_view.jsp?user_Id=" + user_Id;
	}
</script>