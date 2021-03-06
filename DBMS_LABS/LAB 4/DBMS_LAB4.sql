SELECT DISTINCT BUILDING FROM LOCATION;

SELECT COURSEID , SECTION FROM CRSSECTION WHERE TERMID = 'WN03';

SELECT NAME AS "FACULTY_NAME" FROM FACULTY WHERE DEPTID IN (1,2);

SELECT STUDENTID , FIRST||' '||LAST AS "STUD_NAME" FROM STUDENT WHERE STATE IN ('NY', 'NJ');

DELETE FROM DEPARTMENT WHERE DEPTID = '3'; -- THIS WILL SHOW ERROR!!

SELECT COURSEID , MAXCOUNT FROM CRSSECTION ORDER BY MAXCOUNT DESC;

SELECT * FROM TERM;

INSERT INTO TERM VALUES ( 'MNXX' , 'AUTUMN 20XX' , '01-JAN-22' , '01-DEC -22');

SELECT * FROM TERM;

DELETE FROM TERM WHERE TERMID = 'MNXX';

SELECT * FROM TERM;

SELECT COURSEID , TITLE FROM COURSE WHERE PREREQ IS NULL;

SELECT NAME AS "FACULTY_NAME" , DEPTNAME FROM DEPARTMENT , FACULTY WHERE DEPARTMENT.DEPTID = FACULTY.DEPTID ORDER BY FACULTY.DEPTID DESC , NAME ASC;


SELECT NAME AS "FACULTY_NAME" FROM FACULTY WHERE NAME LIKE 'C%';


SELECT STUDENTID , FIRST||' '||LAST AS "STUDENT_NAME" , STARTTERM FROM STUDENT WHERE STARTTERM LIKE '__03';


SELECT COUNT(DISTINCT ROOMNO) AS "TOTAL_ROOMS" FROM LOCATION;


SELECT STUDENTID , FIRST||' '||LAST AS "NAME" , TO_CHAR(BIRTHDATE , 'DD MONTH, YYYY') AS "BIRTHDATE" FROM STUDENT;


SELECT ROUND(AVG(MONTHS_BETWEEN(SYSDATE,BIRTHDATE)/12)) AS "AVG_BIRTHDATE" , ROUND(MAX(MONTHS_BETWEEN(SYSDATE,BIRTHDATE)/12)) AS "MAX_BIRTHDATE" , ROUND(MIN(MONTHS_BETWEEN(SYSDATE,BIRTHDATE)/12)) AS "MIN_BIRTHDATE" FROM STUDENT;


SELECT POWER(2,10) FROM DUAL;


SELECT COURSEID , TITLE , NVL2(PREREQ , 'ONE' , 'NONE') AS "PREREQ" FROM COURSE;


SELECT STUDENTID , FIRST , LAST , BIRTHDATE FROM STUDENT WHERE EXTRACT(MONTH FROM BIRTHDATE) = 5;