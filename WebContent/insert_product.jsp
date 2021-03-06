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
	width:90%;
	height:25px;
}

#in2{
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
		if(document.form.productId.value==""){
			alert("상품번호를 입력하세요.");
			document.form.prodctId.focus();
		}else if(document.form.productName.value==""){
			alert("상품명을 입력하세요.");
			document.form.productName.focus();
		}else{
			document.form.submit();
		}
	}
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>
	<section>
		<br>
		<h2>상품 정보 등록 화면</h2>
		<br>
		<form name="form" method="post" action="insert_product_process.jsp">
			<table id="tab" border=1>
				<tr>
					<th>상품코드</th>
					<td colspan=3><input id="in1" type="text" name="productId"></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td colspan=3><input id="in1" type="text" name="productName"></td>
				</tr>
				<tr>
					<th>가격</th>
					<td colspan=3><input id="in1" type="text" name="unitprice"></td>
				</tr>
				<tr>
					<th>상세정보</th>
					<td colspan=3><input id="in1" type="text" name="description"></td>
				</tr>
				<tr>
					<th>제조사</th>
					<td colspan=3><input id="in1" type="text" name="manufacturer"></td>
				</tr>
				<tr>
					<th>분류</th>
					<td><input id="in2" type="text" name="category"></td>
					<th>재고수</th>
					<td><input id="in2" type="text" name="unitInstock"></td>
				</tr>
				<tr>
					<th>상태</th>
					<td colspan=3>
					<input type="radio" name="condition" value="신규제품" checked>신규제품
					<input type="radio" name="condition" value="중고제품">중고제품
					<input type="radio" name="condition" value="재생제품">재생제품</td>
				</tr>
				<tr>
					<td colspan=4 align=center>
					<input id="btn1" type="button" value="상품등록" onclick="check()">
					<input id="btn1" type="reset" value="다시작성">
			</table>
		</form>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>