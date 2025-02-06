<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6_sessionTest.jsp</title>
</head>
<body>
	<h2>session 정보 확인</h2>
	<p>서버와 클라이언트 사이에 연결정보 값은 JSP의 내장객체인
		session 객체에 자동으로 저장됩니다. 이 정보는 클라이언트가
		첫번째 요청을 보내는 순간 생성됩니다.</p>
		<% DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>
		<ul>
			<li>세션 ID : <%= session.getId()%></li>
			<li>세션이 처음 만들어진 시간(long) : <%= session.getCreationTime()%></li>
			<li>세션이 처음 만들어진 시간(String) : <%= df.format(session.getCreationTime())%></li>
			<li>세션이 마지막으로 접근한 시간(long) : <%= session.getLastAccessedTime()%></li>
			<li>세션이 마지막으로 접근한 시간(String) : <%= df.format(session.getLastAccessedTime())%></li>
		</ul>
</body>
</html>