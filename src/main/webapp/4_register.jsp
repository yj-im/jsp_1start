<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>4_register.jsp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style type="text/css">
    .regForm {
    	max-width: 500px;
    	margin:50px auto ;
    }
    .w90{
    	width: 90px;
    }
    
    </style>
    <script type="text/javascript" src="js/check.js"></script>
  </head>
  <body>
  <div class="container regForm">  
  	<h2>회원 가입</h2>
  	<hr/>
  	<form action="4_save.jsp" method="post" onsubmit="return checkValues()">
  	<!-- 1. form 안의 입력 요소를 서버로 전송하려면 파라미터 이름을 name 속성으로 중복된 이름없이 설정해야함.
  		name 속성값은 db테이블 컬럼명과 자바클래스 변수명과 같도록 하는것이 코드 작성할때 편함.
  		 2. 데이터 저장을 하는 form 의 동작방식(method 속성)을 post (입력값 url에 표시안됨) 파일이나 데이터 큰것들은 get으로 못보냄 (한글깨짐 파라미터 인코딩 필요)
  		   데이터 검색(조회) 							  get(기본값) (입력값 url에 표시됨) * URL은 자동으로 UTF-8 적용 (한글안깨짐)
  		 3. 입력요소 값은 action 속성에 설정된 url 로 전송이 됩니다.
  		   -->
    <div class="input-group mb-3">
	  <span class="input-group-text w90" id="basic-addon1">성 명</span>
	  <input type="text" class="form-control" name="username"
	  			placeholder="성명을 입력하세요." >
	  <span id="usernameMsg" style="color:red"></span>
	</div>
    <div class="input-group mb-3">
	  <span class="input-group-text w90" id="basic-addon2"> 아 이 디</span>
	  <input type="text" class="form-control" name="userid"
	  placeholder="아이디를 입력하세요." >
	</div>
	<div class="input-group mb-3">
	  <span class="input-group-text" id="basic-addon3">패스워드</span>
	  <input type="password" class="form-control" name="password"
	  placeholder="패스워드를 입력하세요."  >
	</div>
	<div class="input-group mb-3">
	  <span class="input-group-text" id="basic-addon4">생년월일</span>
	  <input type="date" class="form-control" name="birth"
	  placeholder="생년월일을 입력하세요." >
	</div>
	<div class="input-group mb-3">
	  <span class="input-group-text w90" id="basic-addon5">성 별</span>
	  <select class="form-select" name="gender">
	  		<option value="">선택하세요.</option>
	  		<option value="male">남자</option>
	  		<option value="female">여자</option>
	  		<option value="unknown">비공개</option>
	  </select>
	</div>
	<div class="input-group mb-3">
	  <span class="input-group-text w90" id="basic-addon6">이메일 </span>
	  <input type="email" class="form-control" name="email"
	  placeholder="이메일을 입력하세요." >
	</div>
	<div>
		<button type="reset" class="btn btn-secondary">취소</button>
		<button type="subject" class="btn btn-dark">완료</button>
	</div>
	 </form>
   <hr/>
   </div> 
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>