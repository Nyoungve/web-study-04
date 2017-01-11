<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id="pinksung";
String pwd="1234";
String name="성윤정";

request.setCharacterEncoding("UTF-8"); 
if(id.equals(request.getParameter("id"))&&
		pwd.equals(request.getParameter("pwd")) ){
	//response.sendRedirect("04_main.jsp");
	response.sendRedirect("04_main.jsp?name="+
		URLEncoder.encode(name,"UTF-8")); 
	System.out.println("조건에 맞음");
	//아이디와 패스워드가 다음 조건에 맞으면 로그인 성공 페이지로 이동한다.
}
else{
	response.sendRedirect("04_loginForm.jsp");//위의 조건이 맞지 않을경우 페이지 제자리 유지.
	System.out.println("조건에 안맞음");
}
%>
