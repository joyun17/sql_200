alter session set nls_Date_format='RR/MM/DD';
drop table emp;
drop table dept;


CREATE TABLE DEPT
       (DEPTNO number(10),
        DNAME VARCHAR2(14),
        LOC VARCHAR2(13) );


INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE EMP (
 EMPNO               NUMBER(4) NOT NULL,
 ENAME               VARCHAR2(10),
 JOB                 VARCHAR2(9),
 MGR                 NUMBER(4) ,
 HIREDATE            DATE,
 SAL                 NUMBER(7,2),
 COMM                NUMBER(7,2),
 DEPTNO              NUMBER(2) );


INSERT INTO EMP VALUES (7839,'KING','PRESIDENT',NULL,'81-11-17',5000,NULL,10);
INSERT INTO EMP VALUES (7698,'BLAKE','MANAGER',7839,'81-05-01',2850,NULL,30);
INSERT INTO EMP VALUES (7782,'CLARK','MANAGER',7839,'81-05-09',2450,NULL,10);
INSERT INTO EMP VALUES (7566,'JONES','MANAGER',7839,'81-04-01',2975,NULL,20);
INSERT INTO EMP VALUES (7654,'MARTIN','SALESMAN',7698,'81-09-10',1250,1400,30);
INSERT INTO EMP VALUES (7499,'ALLEN','SALESMAN',7698,'81-02-11',1600,300,30);
INSERT INTO EMP VALUES (7844,'TURNER','SALESMAN',7698,'81-08-21',1500,0,30);
INSERT INTO EMP VALUES (7900,'JAMES','CLERK',7698,'81-12-11',950,NULL,30);
INSERT INTO EMP VALUES (7521,'WARD','SALESMAN',7698,'81-02-23',1250,500,30);
INSERT INTO EMP VALUES (7902,'FORD','ANALYST',7566,'81-12-11',3000,NULL,20);
INSERT INTO EMP VALUES (7369,'SMITH','CLERK',7902,'80-12-09',800,NULL,20);
INSERT INTO EMP VALUES (7788,'SCOTT','ANALYST',7566,'82-12-22',3000,NULL,20);
INSERT INTO EMP VALUES (7876,'ADAMS','CLERK',7788,'83-01-15',1100,NULL,20);
INSERT INTO EMP VALUES (7934,'MILLER','CLERK',7782,'82-01-11',1300,NULL,10);


commit;

select * from EMP;

select empno, ename, sal
from emp;

SELECT dept.*, deptno
from dept;

select empno as 사원번호, ename as 사원이름, sal as "Salary"
    FROM emp;
    
SELECT ename || sal
    FROM emp;
    
SELECT ename || '의 월급은 ' || sal || '입니다' as 월급정보
    FROM emp;
    
SELECT ename || '의 직업은 ' || job || '입니다' as 직업정보
    FROM emp;
    
SELECT job
    FROM emp;
    
SELECT distinct job
    FROM emp;
    
SELECT UNIQUE job
    FROM emp;
    
SELECT ename, sal
    FROM emp
    ORDER BY sal;
    
SELECT ename, sal as 월급
    FROM emp
    ORDER BY 월급 desc;
    
SELECT ename, deptno, sal
    FROM emp
    ORDER BY deptno asc, sal desc;
    
SELECT ename, deptno, sal
    FROM emp
    ORDER BY 2 asc, 3 desc;
    
SELECT ename, sal, job
    FROM emp
    WHERE sal = 3000;
    
SELECT ename as 이름, sal as 월급
    FROM emp
    where sal >=3000;
    
SELECT ename, sal, job, hiredate, deptno
    FROM emp
    WHERE ename='SCOTT';
    
SELECT ename, hiredate
    FROM emp
    WHERE hiredate='81/11/17';
    
SELECT *
    FROM nls_session_parameters
    WHERE parameter = 'NLS_DATE_FORMAT';
    
SELECT ename, sal*12 as 연봉
    FROM emp
    WHERE sal*12 >=36000;
    
SELECT ename, sal, comm, sal + comm
    FROM emp
    WHERE deptno = 10;
    
SELECT sal + comm
    FROM emp
    WHERE ename='KING';
    
SELECT sal + NVL(comm,0)
    FROM emp
    WHERE ename='KING';
    
SELECT ename, sal, job, deptno
    FROM emp
    WHERE sal <= 1200;

SELECT ename, sal
    FROM emp
    WHERE sal BETWEEN 1000 AND 3000;
    
SELECT ename, sal
    FROM emp
    WHERE (sal >= 1000 AND sal <=3000);
SELECT ename, sal
    FROM emp
    WHERE sal >= 1000
    AND sal <= 3000;

SELECT ename, sal
    FROM emp
    WHERE ename LIKE 'S%';
    
SELECT ename
    FROM emp
    WHERE ename LIKE '_M%';

SELECT ename
    FROM emp
    WHERE ename LIKE '%S%';
    
SELECT ename, comm
    FROM emp
    WHERE comm is null;
    
SELECT ename, sal, job
    FROM emp
    WHERE job not in ('SALESMAN', 'ANALYST', 'MANAGER');
    
SELECT ename, sal, job
    FROM emp
    WHERE (job != 'SALESMAN' and job != 'ANALYST' and job != 'MANAGER');
    
SELECT ename, sal, job
    FROM emp
    WHERE job ='SALESMAN' and sal >= 1200;