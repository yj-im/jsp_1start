<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/register0.css">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
  <div class="container regForm">
  <h2>회원 가입</h2>
	  <div class="input-group mb-3">
	  <span class="input-group-text" id="basic-addon1">성명</span>
	  <input type="text" class="form-control" placeholder="성명을 입력하세요">
	</div>
	
	 <div class="input-group mb-3">
	  <span class="input-group-text" id="basic-addon1">아이디</span>
	  <input type="text" class="form-control" placeholder="아이디를 입력하세요">
	</div>
	
	 <div class="input-group mb-3">
	  <span class="input-group-text" id="basic-addon1">패스워드</span>
	  <input type="password" class="form-control" placeholder="패스워드를 입력하세요">
	</div>
	
	<div class="input-group mb-3">
	  <span class="input-group-text" id="basic-addon1">생년월일</span>
	  <input type="date" class="form-control" placeholder="생년월일을 입력하세요">
	</div>
	
	<div class="input-group mb-3">
	  <span class="input-group-text" id="basic-addon1">성별</span>
		<select class="form-control">
		<option>남자</option>
		<option>여자</option>
		<option>비공개</option>
		</select>
	</div>
	
	<div class="input-group mb-3">
	  <span class="input-group-text" id="basic-addon1">이메일</span>
	  <input type="text" class="form-control" placeholder="이메일을 입력하세요">
	</div>
	<button style="border-radius:10px; background-color:skyblue;">제출</button>
	<button style="border-radius:10px; background-color:beige;">취소</button>
  </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>