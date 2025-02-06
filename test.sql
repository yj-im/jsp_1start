-- 4_register.jsp 의 폼 양식으로 입력한 데이터를
-- 서버가 전송 받아 4_save.jsp 에서 db 테이블에 저장을 합니다.
-- 테이블 이름 : tbl_user_account

create table tbl_user_account(
	userid varchar2(50) primary key,
	username varchar2(50) not null,
	password varchar2(50) not null,
	birth char(10) not null,
	gender varchar2(20) not null,
	email varchar2(50) unique
);

-- dao만들어서 dao메소드 추가 selectForLogin() 인자랑 리턴타입은 *를 사용하도록 받아라 UserAccountDao에 dao메소드 만들어라
-- dao에서 매개변수로 처리해야될거 asdf 대신에 ? , 2222대신에 ? <2개> 리턴타입은(결과행) 0~ 최대치 1개냐 n개냐/ 0~1개행임 
-- 아랫걸 실행하기위해서 
select * from TBL_USER_ACCOUNT
where userid='asdf' and password='2222'; 

create table tbl_rent_info(
	rentid number(10) primary key,
	userid varchar2(50) not null,
	roomid varchar2(10) not null,
 	checkin date not null,
	checkout date not null,
	nights number(2) not null,
	foreign key(userid) references tbl_user_account(userid),
	foreign key(roomid) references tbl_room(roomid)
	);
	
create table tbl_room(
	roomid varchar2(10) primary key,
	room_name varchar2(50) not null,
	room_size number(4) not null,
	fare number(6) not null,
	facilities varchar2(500),
	picture varchar2(500)
	);
