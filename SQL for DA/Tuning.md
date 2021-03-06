# SQL 튜닝

> 풀스캔 되지 않도록 구문을 튜닝해야 성능도 향상

## 1. Case.. When.. > Update.. Set..

- Update로 신규 열을 생성하는 것보다, Case문으로 가상의 열로 데이터 처리하는 것이 상대적으로 가벼움

## 2. 기본 키를 형변환 하는 함수는 사용을 자제

- Int 열에 `substring()` 같이 전체 데이터를 형변환 시키는 함수를 사용하게 되면, 데이터 전체를 풀스캔 하게 됨
- 이런 경우 `>`나 `Between.. and..` 같이 데이터를 range 단위로 처리하면 속도가 비약적으로 개선 됨

## 3. 컬럼값의 데이터 타입에 유의하여 조건문 설정

- 위의 케이스와 유사한 형태로, (0,1) flag가 심어져 있는 컬럼의 데이터 타입이 string인 경우, `where flag=1` 형태로 조건문 설정 시 전체 데이터를 풀스캔함
- 이는 DBMS에서 내부의 묵시적 형변환이 이루어 지는 경우로, `where flag='1'` 형태로 쿼리를 튜닝

## 4. 컬럼을 결합하는 SQL문

- 두개 이상의 컬럼을 `concat()` 같은 함수로 결합하여 조건문을 사용하게 되면, 모든 컬럼값을 조회하게 됨
- 이 경우, 각각의 컬럼에 대한 조건문을 `and`로 결합하게 되면, 인덱스를 사용하여 접근하게 됨에 따라 효율성이 대폭 개선됨

https://hahyuning.tistory.com/67
https://taewooblog.tistory.com/m/63

!! https://towardsdatascience.com/14-ways-to-optimize-bigquery-sql-for-ferrari-speed-at-honda-cost-632ec705979
