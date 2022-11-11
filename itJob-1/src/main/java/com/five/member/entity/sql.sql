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