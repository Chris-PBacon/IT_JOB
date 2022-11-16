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

