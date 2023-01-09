use molab;
create table sample (id varchar(20) primary key, pw varchar(10) not null);
insert into sample values ("peace", "1234");
insert into sample values ("love", "1234");
insert into sample values ("memory", "6432");
insert into sample values ("right", "6666");
insert into sample values ("left", "4444");

create table user (id varchar(20) primary key, pw varchar(200) not null, name varchar(20) not null, birth int, tel varchar(15), email varchar(50), regdate datetime default now());
drop table user;
insert into user values("admin", "1234", "관리자", 1990, "010-1234-5678", "admin@naver.com", now());
select * from user;

create table notice (no int primary key auto_increment, title varchar(50), content varchar(1000), postdate datetime default now(), view int default 0);
drop table notice;
insert into notice (title, content) values ("첫번째 공지사항", "첫번째 공지글 내용!첫번째 공지글 내용!첫번째 공지글 내용!첫번째 공지글 내용!첫번째 공지글 내용!첫번째 공지글 내용!");
commit;

create table free (fno int primary key auto_increment, title varchar(100), content varchar(2000), postdate datetime default now(), view int default 0, name varchar(20));