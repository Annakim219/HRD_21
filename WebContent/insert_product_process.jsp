<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insert_product_process</title>
</head>
<body>
<%@ include file="DBconn.jsp" %>
<%
	PreparedStatement pstmt = null;
	
	String productId = request.getParameter("productId");
	String productName = request.getParameter("productName");
	String unitprice = request.getParameter("unitprice");
	String description = request.getParameter("description");
	String category = request.getParameter("category");
	String manufacturer = request.getParameter("manufacturer");
	String unitInstock = request.getParameter("unitInstock");
	String condition = request.getParameter("condition");
	
	try{
		String sql = "insert into product0125 values(?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		pstmt.setString(2, productName);
		pstmt.setString(3, unitprice);
		pstmt.setString(4, description);
		pstmt.setString(5, category);
		pstmt.setString(6, manufacturer);
		pstmt.setString(7, unitInstock);
		pstmt.setString(8, condition);
		pstmt.executeUpdate();
		System.out.println("제품 등록 성공");
		%>
			<script>
				alert("제품 등록이 완료되었습니다.");
				location.href="select_product.jsp";
			</script>
		
		<%		
	}catch(SQLException e){
		System.out.println("제품 등록 실패");
		e.printStackTrace();
	}
%>

</body>
</html>