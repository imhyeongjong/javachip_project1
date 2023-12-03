create table MEMBER(
  ID VARCHAR2(50) PRIMARY KEY,
  PW VARCHAR2(50),
  NAME VARCHAR2(50),
  TEL VARCHAR2(50),
  CAR_NUM VARCHAR2(50),
  CAR_TYPE VARCHAR2(50)
);

DROP TABLE MEMBER;

SELECT * FROM MEMBER;

insert into MEMBER values('test','test','test','test','test','test');

SELECT * FROM PARKING;

insert into PARKING values(num_parkings.nextval,'a','a','a','a','a','a'
 									,'a','a',NULL,NULL,NULL);
 									
update PARKING set P_YN = '주차가능', P_COUNT = 50, P_POS = 10 where P_PLACE = '서영주차장';

SELECT * FROM PARKING;

SELECT * FROM BOOKING;

SELECT * FROM REVIEW;

insert into BOOKING values(num_booking.nextval,'s',sysdate,'20231102','20231102',
		'충격주차장','2000','y');
commit
select * from REVIEW where P_CODE=1;


select p_code,id,sum(R_1) as 후기1,sum(R_2) as 후기2,sum(R_3) as 후기3 ,sum(R_4) as 후기4 ,sum(R_5) as 후기5
from review
where p_code = 2
group by p_code,id
order by sum(R_1) desc,sum(R_2) desc,sum(R_3) desc ,sum(R_4) desc ,sum(R_5) desc