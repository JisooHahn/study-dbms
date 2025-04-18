CREATE SEQUENCE SEQ_APPLY;
CREATE TABLE TBL_APPLY(
                          ID NUMBER CONSTRAINT PK_APPLY PRIMARY KEY,
                          APPLY_MEMBER_STATUS VARCHAR2(1000) DEFAULT '지원 완료',
                          APPLY_COMPANY_STATUS VARCHAR2(1000) DEFAULT '지원 완료',
                          MEMBER_ID NUMBER NOT NULL,
                          PROGRAM_ID NUMBER NOT NULL,
                          RESUME_ID NUMBER NOT NULL,
                          CREATED_DATE DATE DEFAULT SYSDATE,
                          UPDATED_DATE DATE DEFAULT SYSDATE,
                          CONSTRAINT FK_APPLY_MEMBER FOREIGN KEY(MEMBER_ID)
                              REFERENCES TBL_MEMBER(ID),
                          CONSTRAINT FK_APPLY_RESUME FOREIGN KEY(RESUME_ID)
                            REFERENCES TBL_RESUME(ID),
                        CONSTRAINT FK_APPLY_PROGRAM FOREIGN KEY(PROGRAM_ID)
                              REFERENCES TBL_PROGRAM(ID)
);