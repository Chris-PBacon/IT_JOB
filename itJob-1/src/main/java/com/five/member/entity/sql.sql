CREATE TABLE member_normal
(
    mem_nom_seq    INT            NOT NULL    AUTO_INCREMENT COMMENT '회원번호', 
    mem_nom_name   VARCHAR(45)    NOT NULL    COMMENT '이름', 
    mem_nom_id     VARCHAR(45)    NOT NULL    COMMENT '아이디', 
    mem_nom_pw     VARCHAR(45)    NOT NULL    COMMENT '비밀번호', 
    mem_nom_birth  DATE           NOT NULL    COMMENT '생년월일', 
    mem_nom_email  VARCHAR(45)    NOT NULL    COMMENT '이메일', 
    mem_nom_phone  VARCHAR(45)    NOT NULL    COMMENT '전화번호', 
    mem_nom_place  VARCHAR(45)    NOT NULL    COMMENT '희망근무지', 
    mem_nom_type   CHAR(1)        NOT NULL    COMMENT '회원유형', 
     PRIMARY KEY (mem_nom_seq)
);

drop table member_normal

desc member_normal

SELECT * FROM member_normal 

INSERT INTO member_normal
VALUES (mem_nom_seq,'지영', 'hi', '1234', '2002-01-01', 'hi@naver.com', '010-1234-5678', '써울', 1)

delete from member_normal where mem_nom_id = 'wogus1077'

CREATE TABLE member_ent
(
    `mem_ent_seq`    INT            NOT NULL    AUTO_INCREMENT COMMENT '회원번호', 
    `mem_ent_name`   VARCHAR(45)    NOT NULL    COMMENT '기업명', 
    `mem_ent_id`     VARCHAR(45)    NOT NULL    COMMENT '아이디', 
    `mem_ent_pw`     VARCHAR(45)    NOT NULL    COMMENT '비밀번호', 
    `mem_ent_email`  VARCHAR(45)    NOT NULL    COMMENT '이메일', 
    `mem_ent_phone`  VARCHAR(45)    NOT NULL    COMMENT '전화번호', 
    `mem_ent_num`    VARCHAR(45)    NULL        COMMENT '사업자번호',
	`mem_ent_place`  VARCHAR(45)    NOT NULL    COMMENT '기업소재지',
     PRIMARY KEY (mem_ent_seq)
);

insert into member_ent
values (mem_ent_seq,'카카오', 'kakao', '1234', 'kakao@kakao.com','01011111111','408131233','서울')

select *
from member_ent

drop table member_ent




DESC BOARDQNA


CREATE TABLE BOARDQNA
(
    SEQ     INT               AUTO_INCREMENT,
    TITLE 	VARCHAR(200)  ,  
	CONTENT VARCHAR(200) ,   
    WRITER  VARCHAR(45)   ,    
    INDATE  DATE          ,  
    COUNT   INT     ,
    
     PRIMARY KEY (SEQ)



);

select * from BOARDQNA	


select * from BOARDQNA

insert into BOARDQNA
values (SEQ,'제목2', '글sdsd내용', 'abc', now() ,31)

drop table board

desc board


CREATE TABLE board
(
    `b_seq`      INT             NOT NULL    AUTO_INCREMENT COMMENT '게시글번호. 아이디는 번호로 구성', 
    `b_title`    VARCHAR(45)     NULL        COMMENT '제목', 
    `b_content`  VARCHAR(144)    NULL        COMMENT '내용', 
    `m_id`       VARCHAR(45)     NULL        COMMENT '작성자', 
    `b_date`     DATE            NULL        COMMENT '작성일', 
    `b_count`    INT             NULL        COMMENT '조회수', 
    `b_type`     VARCHAR(45)     NULL        COMMENT '게시판유형', 
    CONSTRAINT PK_blog_author PRIMARY KEY (b_seq)
);

CREATE INDEX blog_author_Index_1
    ON board(b_seq);

ALTER TABLE board
    ADD CONSTRAINT FK_board_m_id_member_m_id FOREIGN KEY (m_id)
        REFERENCES member (m_id) ON DELETE RESTRICT ON UPDATE RESTRICT;


select * from board

insert into board
values (b_seq,'qna1', 'board1', 'qna1', sysdate(),'33','qna');

insert into board
values (b_seq,'qna2', 'board2', 'qna2', sysdate(),'22','qna');

insert into board
values (b_seq,'qna3', 'board3', 'qna3', sysdate(),'44','qna');



CREATE TABLE comment
(
    `c_seq`      INT             NOT NULL    AUTO_INCREMENT COMMENT '댓글번호', 
    `b_seq`      INT             NULL        COMMENT '게시글번호', 
    `m_id`       VARCHAR(45)     NULL        COMMENT '댓글작성자', 
    `c_content`  VARCHAR(144)    NULL        COMMENT '댓글내용', 
    CONSTRAINT PK_blog_user_detail PRIMARY KEY (c_seq)
);

ALTER TABLE comment
    ADD CONSTRAINT FK_comment_m_id_member_m_id FOREIGN KEY (m_id)
        REFERENCES member (m_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE comment
    ADD CONSTRAINT FK_comment_b_seq_board_b_seq FOREIGN KEY (b_seq)
        REFERENCES board (b_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

drop table member

CREATE TABLE member
(
    `m_id`     VARCHAR(45)    NOT NULL    COMMENT '회원 아이디', 
    `m_pw`     VARCHAR(45)    NOT NULL    COMMENT '비밀번호', 
    `m_name`   VARCHAR(45)    NULL        COMMENT '이름', 
    `m_birth`  VARCHAR(45)    NULL        COMMENT '생일', 
    `m_email`  VARCHAR(45)    NULL        COMMENT '이메일', 
    `m_phone`  VARCHAR(45)    NULL        COMMENT '전화번호', 
    `m_place`  VARCHAR(45)    NULL        COMMENT '희망근무지', 
    `m_type`   CHAR(1)        NULL        COMMENT '회원유형', 
    CONSTRAINT PK_blog_post PRIMARY KEY (m_id)
);

ALTER TABLE member COMMENT '일반회원';

CREATE INDEX blog_post_Index_3
    ON member(m_birth);

CREATE INDEX blog_post_Index_1
    ON member(m_id);



select * from member_ent



CREATE TABLE member_ent
(
    `e_id`     VARCHAR(45)    NOT NULL    COMMENT '아이디', 
    `e_pw`     VARCHAR(45)    NOT NULL    COMMENT '비밀번호', 
    `e_name`   VARCHAR(45)    NULL        COMMENT '기업명', 
    `e_email`  VARCHAR(45)    NULL        COMMENT '이메일', 
    `e_phone`  VARCHAR(45)    NULL        COMMENT '전화번호', 
    `e_place`  VARCHAR(45)    NULL        COMMENT '소재지', 
    `e_num`    VARCHAR(45)    NULL        COMMENT '사업자번호', 
    CONSTRAINT PK_blog_category PRIMARY KEY (e_id)
);

ALTER TABLE member_ent COMMENT '기업회원';

CREATE INDEX blog_category_Index_1
    ON member_ent(e_id);

CREATE INDEX blog_category_Index_2
    ON member_ent(e_name);



-- lecture Table Create SQL
CREATE TABLE lecture
(
    `l_seq`      INT             NOT NULL    AUTO_INCREMENT COMMENT '강의번호', 
    `l_title`    VARCHAR(45)     NULL        COMMENT '제목', 
    `l_content`  VARCHAR(45)     NULL        COMMENT '내용', 
    `l_teacher`  VARCHAR(45)     NULL        COMMENT '강사', 
    `l_price`    VARCHAR(45)     NULL        COMMENT '가격', 
    `l_img`      VARCHAR(144)    NULL        COMMENT '이미지', 
     PRIMARY KEY (l_seq)
);

ALTER TABLE lecture COMMENT '강의';


-- lecture_index Table Create SQL
CREATE TABLE lecture_index
(
    `li_seq`      INT            NOT NULL    AUTO_INCREMENT COMMENT '목차번호', 
    `l_seq`       INT            NULL        COMMENT '강의번호', 
    `li_order`    VARCHAR(45)    NULL        COMMENT '목차순서', 
    `li_content`  VARCHAR(45)    NULL        COMMENT '목차내용', 
     PRIMARY KEY (li_seq)
);

ALTER TABLE lecture_index COMMENT '목차';

ALTER TABLE lecture_index
    ADD CONSTRAINT FK_lecture_index_l_seq_lecture_l_seq FOREIGN KEY (l_seq)
        REFERENCES lecture (l_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- lecture_grade Table Create SQL
CREATE TABLE lecture_grade
(
    `lg_seq`      INT            NOT NULL    AUTO_INCREMENT COMMENT '평가번호', 
    `l_seq`       INT            NULL        COMMENT '강의번호', 
    `lg_star`     VARCHAR(45)    NULL        COMMENT '강의평점', 
    `lg_content`  VARCHAR(45)    NULL        COMMENT '평가내용', 
    `m_id`       VARCHAR(45)    NULL        COMMENT '작성자', 
     PRIMARY KEY (lg_seq)
);


ALTER TABLE lecture_grade COMMENT '강의평가';

ALTER TABLE lecture_grade
    ADD CONSTRAINT FK_lecture_grade_l_seq_lecture_l_seq FOREIGN KEY (l_seq)
        REFERENCES lecture (l_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE lecture_grade
    ADD CONSTRAINT FK_lecture_grade_m_id_member_m_id FOREIGN KEY (m_id)
        REFERENCES member (m_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

drop table lecture_grade
select * from member
-- 수강확인테이블
create table lecture_check
(
	lc_seq int not null auto_increment,
	l_seq int not null,
	m_id varchar(45) not null,
	primary key(lc_seq)
);

alter table lecture_check
	add constraint fk_lecture_check_l_seq_lecture_l_seq foreign key(l_seq)
	references lecture(l_seq) on delete restrict on update restrict;
alter table lecture_check
	add constraint fk_lecture_check_m_id_member_m_id foreign key(m_id)
	references member(m_id) on delete restrict on update restrict;


select * from member

insert into lecture
values(l_seq, 'ReactJS 완벽하게 끝내기(2022년 개정판)', 'react의 정수', '김동환 멘토님',
'무료','/images/reactJs.png');
insert into lecture
values(l_seq, '리눅스마스터 2급 1차공략(2022년 개정판)', '리눅스마스터를 따봅시다', '매생이',
'5,000','/images/Linux.png');
insert into lecture
values(l_seq, 'Oracle DB 최신 문법 + 최적화 비법 대공개!(2022년 개정판)', 'DB 완전 정복', '숭어',
'70,000','/images/oracleDb.png');
insert into lecture
values(l_seq, '머신러닝, 딥러닝, AI 헷갈리지 마세요, 딱 정리해드려요.(2022년 개정판)', '미래 인재 개발', '엮은이 김경식씨',
'150,000','/images/mlDlAi.jpeg');
insert into lecture
values(l_seq, 'SpringBoot A to Z(2022년 개정판)', '용수철부트의 끝', '제빵왕 문지영',
'50,000','/images/springBoot.png');
insert into lecture
values(l_seq, '작심삼일 HTML, CSS, JS 정리(2022년 개정판)', '웹 디자인마스터 ㄱㄱ', '김민정 연구원',
'50,000','/images/htmlCssJs.png');
insert into lecture
values(l_seq, '파이썬 기초부터 심화까지(2022년 개정판)', '파이파이썬', '설재형 강사',
'80,000','/images/python.jpg');
insert into lecture
values(l_seq, '구글버트 배우고 싶은사람?(2022년 개정판)', '버트마스터', '앵그리 상민',
'1,000,000','/images/googleBert.png');

select * from lecture

insert into lecture_index
values(li_seq, 8, 1, '파이썬 다운하기');
insert into lecture_index
values(li_seq, 8, 2, '파이썬 설치하기');
insert into lecture_index
values(li_seq, 8, 3, '파이썬 실행하기');
insert into lecture_index
values(li_seq, 8, 4, '파이썬 기본문법');
insert into lecture_index
values(li_seq, 8, 5, '버트 이해하기');
insert into lecture_index
values(li_seq, 8, 6, '버트 사용하기');
insert into lecture_index
values(li_seq, 8, 7, '버트 적용하기');
insert into lecture_index
values(li_seq, 8, 8, '버트 활용하기');

select li.li_order, li.li_content from lecture l, lecture_index li where l.l_seq= li.l_seq and l.l_seq= 16
select * from lecture_grade
insert into lecture_grade
values(lg_seq, 16,)
delete from lecture_grade where m_id = 'wogus1077'

-- 수강바구니
create table lecture_basket(
	lb_seq int not null auto_increment,
	l_seq int not null,
	m_id varchar(45) not null,
	primary key (lb_seq)
)
alter table lecture_basket
	add constraint FK_lecture_basket_l_seq_lecture_l_seq foreign key (l_seq)
		references lecture (l_seq) on delete restrict on update restrict;
alter table lecture_basket
	add constraint FK_lecture_basket_m_id_member_m_id foreign key (m_id)
		references member (m_id) on delete restrict on update restrict;


select * from lecture_basket

