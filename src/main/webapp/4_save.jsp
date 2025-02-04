<%@page import="dao.UserAccountDao"%>
<%@page import="java.util.List"%>
<%@page import="vo.UserAccountVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 가입 저장</title>
</head>
<body>

	<%
	// 요청으로 전달된 form 데이터를 인코딩
		request.setCharacterEncoding("UTF-8");
	// 4_register.jsp 의 form 입력값을 전달 받는 코드 작성
		String username=request.getParameter("username");
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
		String birth=request.getParameter("birth");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
	// 참고 : 정수 타입으로 저장할 때에는 Integer.parseInt(request.getParameter("age"));
	
	// db 테이블에 입력한 6개 값을 insert. dao 메소드 실행 -> 값을 UserAccountVO 타입으로 만들어야함 
		
		// out : jsp 의 내장객체.-> 브라우저에 출력 기능. System.out.println() 는 콘솔 출력.
		
		out.print("<h2>데이터 잘 받았습니다</h2>");
		out.print("<ul>");
		out.print("<li>");
		out.print(username);
		out.print("</li>");
		out.print("<li>");
		out.print(userid);
		out.print("</li>");
		out.print("<li>");
		out.print(password);
		out.print("</li>");
		out.print("<li>");
		out.print(birth);
		out.print("</li>");
		out.print("<li>");
		out.print(gender);
		out.print("</li>");
		out.print("<li>");
		out.print(email);
		out.print("</li>");
		out.print("</ul>");
		
		UserAccountDao dao= UserAccountDao.getInstance();	// 데이터베이스랑 연결한 UserAccountDao 싱글톤 객체의 유일한 인스턴스를 불러와서 dao 변수에 줌
		UserAccountVO vo= new UserAccountVO(username,userid,password,birth,gender,email); // UserAccountVO생성자 호출해서 vo객체를 생성함(저순서로)
		int result=dao.insert(vo);	// UserAccountDao객체의 인서트 메소드를 가져와서 vo객체의 정보를 삽입한다. 그리고 그결과를 정수값으로 반환
		if(result==0){	// 인서트 된게 없으면 성공, 있으면 실패
			out.print("<h2>회원 가입 완료!!</h2>");
			
		}else{
			out.print("<h2>회원 가입 실패!!</h2>");
		}
	%>
</body>
</html>