/**
 * 4_register.jsp 의 form 요소값을 검사
 * 
 */
// submit 버튼을 실행할 때 처리되는 이벤트 함수
 function checkValues(){
/*	 alert("checkValues 함수 입니다.")
	 return false	// false 값은 submit 동작 하지 않음.*/
	 
	 const frm =document.forms[0]	// form 은 배열로 접근
	 if(frm.username.value===''){
		 alert('이름 입력은 필수 입니다.')
		 frm.username.focus()
		 return false
	 }else  if(frm.userid.value===''){
		 alert('아이디 입력은 필수 입니다.')
		 frm.userid.focus()
		 return false
 	}else if(frm.password.value===''){
		 alert('패스워드 입력은 필수 입니다.')
		 frm.password.focus()
		 return false
 	}else if(frm.birth.value===''){
		 alert('생년월일 입력은 필수 입니다.')
		 frm.birth.focus()
		 return false
 	}else if(frm.gender.value===''){
		 alert('성별 선택은 필수 입니다.')
		 frm.gender.focus()
		 return false
 	}else {
		 return true
		 }
	 }