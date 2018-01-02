CREATE TABLE board_cafe(
num NUMBER PRIMARY_KEY,
writer VARCHAR2(100) NOT NULL,
title VARCHAR2(100) NOT NULL,
content CLOB,
viewCount NUMBER,
regdate DATE
);

CREATE SEQUENCE board_cafe_seq;