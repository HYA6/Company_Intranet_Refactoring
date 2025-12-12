CREATE TABLE "BOARD" (	
    "IDX" NUMBER(*,0) NOT NULL, 
    "CNUM" NUMBER(*,0), 
    "NAME" VARCHAR2(20), 
    "SUBJECT" VARCHAR2(60) NOT NULL, 
    "CONTENT" VARCHAR2(3000) NOT NULL, 
    "WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
    "GUBUN" VARCHAR2(100) NOT NULL,
    CONSTRAINT "FK_CNUM_MAIN_TO_BOARD" FOREIGN KEY ("CNUM")
    REFERENCES "MAIN" ("CNUM")
);

DROP TABLE BOARD;

DELETE FROM BOARD;
DROP SEQUENCE BOARD_idx_seq;
CREATE SEQUENCE BOARD_idx_seq;

SELECT * FROM BOARD ORDER BY idx DESC;
SELECT COUNT(*) FROM BOARD;

INSERT INTO BOARD (idx, subject, content, gubun)
VALUES (BOARD_idx_seq.nextval, '������ ��� ��� ��� �ۺ�ȸ', '�ȳ礷�� ������,,, ������� �ƴϰ����� ,,,', '�˸�');
INSERT INTO BOARD (idx, subject, content, gubun) 
VALUES (BOARD_idx_seq.nextval, '�ܺ� ��û ���� ���� ����', '�Ϲ�����б����� �����Ϸ� �츮 ȸ�翡 ���Ŵ�ϴ�~!', '�˸�');
INSERT INTO BOARD (idx, subject, content, gubun) 
VALUES (BOARD_idx_seq.nextval, '�����ް� �ȳ�', '�˾Ƽ��� ������ ~ ', '�˸�');
INSERT INTO BOARD (idx, subject, content, gubun)  
VALUES (BOARD_idx_seq.nextval, '������ �׷� 2023 �Ϲݱ� �λ�߷�', '�ȳ��� ������ ,, ,������� �ƴϰ����� ,,,', '�˸�');
INSERT INTO BOARD (idx, subject, content, gubun) 
VALUES (BOARD_idx_seq.nextval, '���� ������ �������� �ȳ�', '���� ���� �� �ϼ���.', '�ֿ����');
INSERT INTO BOARD (idx, subject, content, gubun) 
VALUES (BOARD_idx_seq.nextval, '�ѽ��� �����ð� ���� �ȳ�', '9�� ��� 6�� ��ٿ��� 8�� ��� 5�� ������� �����ð� ���� �մϴ�.', '�ֿ����');
INSERT INTO BOARD (idx, subject, content, gubun)  
VALUES (BOARD_idx_seq.nextval, '7�� 15�� ����� �系 ��ü ���', '�Ѹ� ���� ���� ���̱� �ٶ��ϴ�.', '�ֿ����');

COMMIT;