/* SELECT 문 사용
 * => 테이블의 데이터를 조회하는 명령. 
 */

-- 1) SELECT 컬럼명, 컬럼명, ... FROM 테이블명;
SELECT title, content
FROM board2;

-- 2) WHERE : 조회할 행에 대해 제한을 가함. 
-- 실행 순서: 
--  => board2 테이블을 선택한다. 
--  => WHERE 조건에 해당하는 행(레코드)을 결정한다.
--  => 결정된 행에서 SELECT에 지정된 컬럼 값을 꺼낸다.
SELECT title, content
FROM board2
WHERE bno > 3 AND bno < 7;


/* 복잡한 SELECT를 실습하기 위한 테이블 준비! */

/* DB 모델링
 * => 모델링? 생각을 글과 그림으로 표현한 것.
 * => DB 모델링? 데이터와 데이터 간의 관계를 글과 그림으로 표현한 것.
 * 
 * DB 모델링 절차
 * 1. 논리 모델 작성: DBMS에 종속되지 않은 모델링. 개념에 초점을 맞추어 그린다.
 * 1) 엔티티 식별(Entity) => Primary Key 지정
 * 2) 제1정규화 
 *    => 중복 컬럼을 찾아서 제거한다.
 *    => 중복 컬럼의 데이터를 저장한 테이블을 만들과 기존 테이블과 부모 자식 관계를 맺는다.
 * 3) 제2정규화
 *    => Primary Key 컬럼이 두 개 이상일 때 수행한다.
 *    => 테이블에 선언된 모든 컬럼은 반드시 PK에 종속 되어야 한다.
 *    => PK 값이 바뀌는 다른 일반 컬럼의 값도 바뀐다.
 *    => 문제는 PK 컬럼이 여러 개일 경우, 그 중 하나의 PK에만 종속된다면, 제거 대상 컬럼이다.
 * 4) 제3정규화
 *    => PK에 종속된 컬럼이 아니라, 다른 일반 컬럼에 종속된 컬럼인 경우 분리한다.
 *    => 곧 해당 테이블에 소속되지 말아야 할 컬럼이라는 의미이다.
 * 5) 인덱스 컬럼 지정
 *    => 유니크 컬럼(Unique): 비록 PK는 아니지만 중복되어서는 안되는 컬럼.
 *    => 색인 컬럼(Index) : 데이터를 찾을 때 색인으로 사용할 컬럼.
 *       색인 컬럼은 별도 테이블에 정렬된다. 색인 컬럼이 많으면 그만큼 메모리 증가. 
 * 6) 물리 모델 : 특정 DBMS 맞추어 테이블 이름과, 컬럼명 등을 지정한다.  
 * 7) 도메인 적용
 *    => 모든 테이블의 컬럼들을 타입에 따라 분류한다. 
 *    => 그리고 그 타입을 정의하고, 컬럼에 적용한다.
 *    => 이유? 컬럼을 쉽게 다룰 수 있다.
 * 
 * 정규화를 하는 이유?
 * => 데이터가 중복되는 것을 방지하기 위해.
 * => 데이터 중복 => 데이터를 변경/삭제하기가 힘들다. 
 *    중복된 데이터를 모두 변경하고 삭제해야 하기 때문이다.
 * => 변경할 때 실수로 중복 데이터 중에서 하나를 빠뜨리면, 
 *    데이터가 일치하지 않는 오류가 발생한다. => 데이터에 결함 발생!  
 */









