<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 목록</title>
<style>
#tab {
	margin: 0 auto;
	width: 1000px;
}

th {
	height: 35px;
}

td {
	height: 25px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<%@ include file="DBconn.jsp"%>
	<section>
		<br>
		<h2>회원 정보 등록 화면</h2>
		<br>
		<table id="tab" border=1>
			<tr>
				<th width="100">id</th>
				<th width="80">성명</th>
				<th width="80">패스워드</th>
				<th width="50">성별</th>
				<th width="200">생년월일</th>
				<th width="170">이메일</th>
				<th width="170">휴대폰</th>
				<th width="300">주소</th>
				<th width="80">닉네임</th>

				<%
					PreparedStatement pstmt = null;
					ResultSet rs = null;

					try {
						String sql = "select * from member0125 order by id";
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while (rs.next()) {
							String id = rs.getString("id");
							String name = rs.getString("name");
							String password = rs.getString("password");
							String gender = rs.getString("gender");
							String birth = rs.getString("birth");
							String mail = rs.getString("mail");
							String phone = rs.getString("phone");
							String address = rs.getString("address");
							String nickname = rs.getString("nickname");
							System.out.println("회원 정보 조회 성공");
				%>
			
			<tr>
				<td align=center><%=id%></td>
				<td align=center><%=name%></td>
				<td align=center><%=password%></td>
				<td align=center><%=gender%></td>
				<td align=center><%=birth%></td>
				<td><%=mail%></td>
				<td align=center><%=phone%></td>
				<td><%=address%></td>
				<td align=center><%=nickname%></td>
			</tr>

			<%
				}
				} catch (SQLException e) {
					System.out.println("회원 정보 조회 실패");
					e.printStackTrace();
				}
			%>
		</table>
	</section>
	<%@ include file="footer.jsp"%>

</body>
</html>