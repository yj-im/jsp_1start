<%@page import="vo.UserAccountVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME-index.jsp</title>
</head>
<body>
	<h1>첫번째 테스트</h1>
	<hr/>
	<p>웹프로젝트를 만들어서 html 파일을 작성해 봅니다.
		파일명은 index.html 입니다.
		web.xml 에 welcome file 명에 해당하는 파일은
		프로젝트를 실행하면 자동으로 응답페이지가 됩니다.
	</p>
	<hr/>
	<%
	// Object 리턴을 UserAccountVO 타입으로 변경(캐스팅)
		UserAccountVO vo = (UserAccountVO)session.getAttribute("user");
	
	%>
	<h3>1start 프로젝트의 메뉴입니다.</h3>
	<ul>
		<%
			if(vo!=null) {   // 로그인 상태가 아니면 vo 는 null. getXXX 메소드 실행할 때 오류 처리
		%>
			 	<li>로그인 사용자</li>
				<li> 아이디 : <%= vo.getUserid() %></li>		
				<li> 이름 : <%= vo.getUsername() %></li>		
				<li> 이메일 : <%= vo.getEmail() %></li>		
				<li><a href="5_logout.jsp">로그아웃</a></li>  <!-- 로그인 상태일 때만 나오는 메뉴 -->
		<%
			}else {
		%>		
				<li><a href="4_register.jsp">회원 가입</a></li> <!-- 로그인 상태가 아닐때 나오는 메뉴 -->
				<li><a href="5_login.jsp">로그인</a></li> <!-- 로그인 상태가 아닐때 나오는 메뉴 -->
		<%
			}
		%>
	</ul>
</body>
</html>