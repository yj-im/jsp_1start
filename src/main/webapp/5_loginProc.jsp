<%@page import="vo.UserAccountVO"%>
<%@page import="dao.UserAccountDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5_loginProc.jsp</title>
</head>
<body>
	<%
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
		
		// SQL 실행을 위해 UserAccountDao 의 객체를 가져오기
		UserAccountDao dao=UserAccountDao.getInstance();
		// 로그인 sql 실행을 위한 메소드 호출
		UserAccountVO vo=dao.selectForLogin(userid, password);
		if(vo !=null){
			out.print("<h2>로그인 성공 했습니다.</h2>");
			session.setAttribute("user", vo);	
			// 세션에 필요한 데이터 저장. --> 로그인 사용자 정보를 서버에서 저장
	%>
	<h2>로그인 사용자</h2>
		<ul>
			<li> 아이디 : <%= vo.getUserid() %></li>
			<li> 이름 : <%= vo.getUsername() %></li>
			<li> 이메일 : <%= vo.getEmail() %></li>
		</ul>	
		<a href="index.jsp">Go Home</a>
	<%
		}else {	
			/* out.print("<h2>로그인 실패 했습니다.</h2>");
			out.print("로그인 정보를 확인해 주세요"); */
			response.sendRedirect("5_login.jsp?fail=y");
			// 서버측에서 새로운 url로 페이지를 요청. 로그인 실패를 알리기 위한 파라미터 추가
		}
	%>
	
	
	
</body>
</html>