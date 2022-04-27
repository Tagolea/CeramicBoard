select * from user_tables;

create table member(
	id varchar(20) primary key,
	password varchar(20),
	name varchar(30),
	role varchar(20)
);
insert into member values('tagolea','1234','올레아 공방','ADMIN');
insert into member values('test','1234','상현맘','USER');
insert into member values('test2','1234','곰자자기','USER');
select * from member;

create table board(
	bid int primary key,
	title varchar(50),
	writer varchar(30),
	content varchar(100),
	filename varchar(500)
);
insert into board(bid,title,writer,content,filename) values(1,'이 상품 사고싶어요ㅜㅜ','상현맘','너무 이쁜데 정말 사고싶네요','사진견본2.jpg');
insert into board(bid,title,writer,content,filename) values(2,'이번에 재입고된 상품!','올레아 공방','세미 투박 베이직 머그가 재입고 되었습니다!','사진견본.jpg');
insert into board(bid,title,writer,content,filename) values(3,'이번에 내려갈 제품입니다~','올레아 공방','이번에 놓치면 구매할 수 없습니다!','사진견본3.jpg');
insert into board(bid,title,writer,content,filename) values(4,'안녕하세요! :)','곰자자기','이번에 가입했어요!','defalut.jpg');
insert into board(bid,title,writer,content,filename) values(5,'이번 세일 품목입니다','올레아 공방','놓치면 후회할 상품!','사진견본4.jpg');
select * from board;
drop table board;
drop table member;