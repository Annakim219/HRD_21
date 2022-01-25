<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn = null;
	
	try{
		String url = "jdbc:Oracle:thin:@//localhost:1521/xe";
		String user = "system";
		String pass = "1234";
		String dirver = "oracle.jdbc.OracleDriver";
		Class.forName(dirver);
		conn = DriverManager.getConnection(url, user, pass);
		System.out.println("오라클 연결 성공");
	
	}catch(SQLException e){
		System.out.println("오라클 연결 성공");
		e.printStackTrace();
	}
	
%>