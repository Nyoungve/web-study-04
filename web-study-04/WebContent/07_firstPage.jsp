<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP firstPage</title>
</head>
<body>
<!-- 정보 저장시에 어느 영역 내에서 사용가능한지 유효 범위 4가지 영역으로 나눌 수 있음 
내장 객체의 영역 4가지!! (내장객체는 해당 객체가 얼마 동안이나 살아있는가를 지정해주는 것. )
01. page
02. request
03. session
04. application

내장객체에서 정보를 주고 받기 위한 메소드! 
setAttribute(name, value) 이름에 값을 설정해준다.
getAttribute(name) 매개 변수로 준 이름에 설정된 값을 얻어낸다. 
getAttributeNames() 현재 객체에 관련된 모든 속성의 이름을 뽑아낸다. 
removeAttribute(name) 매개 변수로 준 이름에 설정된 값을 제거한다. 
 -->
 
 <%
 	pageContext.setAttribute("name", "page man");
 	request.setAttribute("name", "request man");
 	session.setAttribute("name","session man");
 	application.setAttribute("name", "application man");
 	
 	System.out.println("firstPage.jsp");
 	System.out.println("하나의 페이지 속성: "+pageContext.getAttributesScope("name"));
 	System.out.println("하나의 요청 속성: "+request.getAttribute("name"));
 	System.out.println("하나의 세선 속성: "+session.getAttribute("name"));
 	System.out.println("하나의 애플리케이션 속성: "+application.getAttribute("name"));
 	
 	request.getRequestDispatcher("07_secondPage.jsp").forward(request, response);
 %>
</body>
</html>