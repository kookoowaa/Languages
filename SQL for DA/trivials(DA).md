# Trivials

## 결손 값 대체하기

- `COALESCE(값, 대체값)`

## 특정 그룹 내 첫번째/마지막 값 출력

- `FIRST_VALUE(열) OVER(PARTIION BY....)`
- `LAST_VALUE(열) OVER(PARTITION BY....)`

## 공통 테이블 식 (CTE: Common Table Expression)

- `WITH <테이블 이름> AS (....)`

## CTE로 유사 테이블 만들기
> - `SELECT` 구문으로 유사 테이블 만들기
> ```sql
> WITH bt AS (
> SELECT 1 AS id, 'pc' as device_name
> SELECT 2 as id, 'phone' as device_name
> ...
> )
> ```

> - `VALUES` 구분으로 유사 테이블 만들기 (postgres에서 `values` 구문은 `select`, `from` 절에서 사용 불가) 
> ```sql
> WITH bt(id, device_name) AS (
> VALUES
>     (1, 'pc'),
>     (2, 'phone'),
>     ...
> )
> ```

> -  DDL로 임시 테이블 만들기  
> ```sql
> CREATE TEMPORARY TABLE base_table(
>   col_1 INT NOT NULL,
>   col_2 DATETIME NOT NULL,
> )
> ```

## Group by 유의사항
- Select절에서 as로 alias한 colum명과, From 절의 column명이 일치할 경우, Group by 절에서 명시적으로 따르는 column 이름은 from 절의 column명이 우선시 됨
- 따라서 되도록이면 alias 시 원천 coumn명과는 다른 이름을 사용하는 것을 권장
- 아닐 시 `table.column` 형태로 명시해 주어야 충돌이 발생하지 않음

## 변수 사용
- `declare @변수명 데이터타입 = 변수`로 변수 사용 가능
- 사용 시에는 `@변수명`으로 호출 가능
- 단 redshift에서는 지원 안함

## 임시테이블
