# Z차트 관리기법

[Reference](https://blog.naver.com/skh2342/222587114020)

- Z차트: 12개월 매출을 3종의 다른 관점에서 분석하는 차트  
- 각각의 관점은 다음과 같음:
  > 1. 월별 매출액: 기초이 되는 데이터이며, 당월의 매출액 합계를 12개월에 걸쳐 트렌드를 확인 가능
  > 2. 누계 매출액: 1의 월별 매출액을 12개월에 걸쳐 누계로 확인 가능하며, **기울기를 확인**하기 용이함
  > 3. 이동 합계 매출액: 12개월의 이동합계 매출액을 P1부터 P12까지 확인 가능하며, 이를 통해 중장기 트렌드를 눈으로 확인 가능

- SQL 쿼리로 보면 다음과 같은 형태를 띄게 됨:
  ```sql
  -- 월매출
  SELECT 
    period
    , sales
  FROM
    ...

  -- 월매출(누계)
  SELECT
    period
    , SUM(sales) OVER (ORDER BY period ROWS UNBOUNDED PRECEDING)
  FROM
    ...
  WHERE
    period < (datetrunc('month', CURRENT_DATE) - INTERVAL '1 year')
  GROUP BY
    period
  
  -- 연매출(이동)
  SELECT
    period
    , SUM(sales) OVER (ORDER BY period ROWS BETWEEN 11 PRECEDING AND CURRENT ROW)
  FROM
    ...
  WHERE
    period < (datetrunc('month', CURRENT_DATE) - INTERVAL '2 year')
  GROUP BY
    period
  ```

