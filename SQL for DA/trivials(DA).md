# Trivials

## 결손 값 대체하기

- `COALESCE(값, 대체값)`

## 특정 그룹 내 첫번째/마지막 값 출력

- `FIRST_VALUE(열) OVER(PARTIION BY....)`
- `LAST_VALUE(열) OVER(PARTITION BY....)`

## 공통 테이블 식 (CTE: Common Table Expression)

- `WITH <테이블 이름> AS (....)`

## CTE로 유사 테이블 만들기