<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 등록</title>
<style>
#tab {
	margin: 0 auto;
	width:500px;
}

tr{
	height:30px;
}

th{
	width:25%;
}

td{
	width:80%;
}

#in1{
	width:50%;
	height:25px;
}

#in2{
	width:60%;
	height:25px;
}

#sel1{
	width:30%;
	height:27px;
}

#sel2{
	width:20%;
	height:27px;
}

#in3{
	width:20%;
	height:25px;
}

#in4{
	width:95%;
	height:25px;
}

#btn1{
	width:120px;
	height:30px;
	background:black;
	color:white;
}
</style>
<script>
	function check(){
		if(document.form.id.value==""){
			alert("아이디를 입력하세요.");
			document.form.id.focus();
		}else if(document.form.name.value==""){
			alert("이름을 입력하세요.");
			document.form.name.focus();
		}else if(document.form.password.value==""){
			alert("비밀번호를 입력하세요.");
			document.form.password.focus();
		}else{
			alert("종료");
			form.action="insert_member_process.jsp"
		}
	}
	
	function idchk(){
		document.form.submit();
	}

</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<%@ include file="DBconn.jsp" %>
	<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String id = request.getParameter("id");
		
		try{
			String sql = "select id from member0125 where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				%>
					<script>
						alert("이미 등록된 아이디입니다.")
						history.back(-1);
					</script>
				<%
			}else if(id==null){
				id="";
			}
		}catch(SQLException e){
			System.out.println("DB 에러");
			e.printStackTrace();
		}
	%>
	<section>
		<br><h2>회원 정보 등록 화면</h2><br>
		<form name="form" method="post" action="insert_member.jsp">
			<table id="tab" border=1>
				<tr>
					<th>아이디</th>
					<td><input id="in1" type="text" name="id" value="<%=id %>" onchange="idchk();"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input id="in1" type="text" name="name"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input id="in1" type="password" name="password"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input type="radio" name="gender" value="남성" checked>남
					<input type="radio"	name="gender" value="여성">여</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input id="in1" type="text" name="birth"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input id="in2" type="text" name="mail1">@
					<select id="sel1" name="mail2">
						<option value="naver.com" selected>naver.com</option>
						<option value="kor.com">kor.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>						
					</select></td>
				</tr>
				<tr>
					<th>핸드폰</th>
					<td><select id="sel2" name="phone1">
						<option value="010" selected>010</option>
						<option value="011">011</option>
						<option value="016">016</option>					
					</select>-
					<input id="in3" type="text" name="phone2">-
					<input id="in3" type="text" name="phone3">
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input id="in4" type="text" name="address"></td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td><input id="in1" type="text" name="nickname"></td>
				</tr>
				<tr style="height:50px;">
					<td colspan=2 align=center>
					<input id="btn1" type="submit" value="회원등록" onclick="check()">
					<input id="btn1" type="reset" value="다시작성">
				</td>
				</tr>														
			</table>
		</form>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>