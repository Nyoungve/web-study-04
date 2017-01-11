<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP</title>
</head>
<body>
<%
	String appPath=application.getContextPath();// 웹어플리케이션의 URL경로중 컨텍스트 패스명을 반환한다. 
	String filePath=application.getRealPath("06_application.jsp"); //jsp의 실제 경로를 반환한다. 
	
%>
웹 애플리케이션의 컨텍스트 패스명<br>
<b><%=appPath %></b><hr> 
웹 애플리케이션의 파일 경로명 <br>
<b><%=filePath %></b><br>
</body>
</html>