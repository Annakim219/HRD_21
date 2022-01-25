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
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<section>
		<br><h2>회원 정보 등록 화면</h2><br>
		<form name="form" method="post" action="insert_member_process.jsp">
			<table id="tab" border=1>
				<tr>
					<th>아이디</th>
					<td><input id="in1" type="text" name="id"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input id="in1" type="text" name="name"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input id="in1" type="text" name="password"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input type="radio" name="gender" value="남성" checked>남
					<input type="radio"	name="gender" value="여성">여</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input id="in1" type="text" name="password"></td>
				</tr>						
			</table>
		</form>
	</section>
</body>
</html>