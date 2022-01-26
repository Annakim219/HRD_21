<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<style>
#tab{
	margin:0 auto;
}

tr{
	height:30px;
}

th{
	width:100px;
}

td{
	width:150px;
}

#in1{
	height:25px;
}

#in2{
	width:99%;
	height:25px;
}

#btn1{
	width:120px;
	height:30px;
	background:black;
	color:white;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<section>
		<br><h2>주문 정보 등록</h2><br>
		<form name="form" method="post" action="insert_order.jsp">
			<table id="tab" border=1>
			<tr>
				<th>상품 코드</th>
				<td><input id="in1" type="text" name="id"></td>
				<th>주문자 이름</th>
				<td><input id="in1" type="text" name="name"></td>
			</tr>
			<tr>
				<th>주문 날짜</th>
				<td><input id="in1" type="text" name="orderdate"></td>
				<th>전화번호</th>
				<td><input id="in1" type="text" name="tel"></td>
			</tr>
			<tr>
				<th>배달주소</th>
				<td colspan=3><input id="in2" type="text" name="addr"></td>
			</tr>
			<tr>
				<th>결제방법</th>
				<td><input type="radio" name="pay" value="현금">현금
				<input type="radio" name="pay" value="카드">카드</td>
				<th>카드번호</th>
				<td><input id="in1" type="text" name="cardno"></td>	
			</tr>
			<tr>
				<th>주문 상품수</th>
				<td><input id="in1" type="text" name="prodcount"></td>
				<th>전화번호</th>
				<td><input id="in1" type="text" name="total"></td>				
			</tr>
			<tr>
				<td colspan=4 align=center>
				<input id="btn1" type="button" value="목록 " onclick="goList()">
				<input id="btn1" type="submit" value="목록 " onclick="check()">				
			</table>
		</form>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>