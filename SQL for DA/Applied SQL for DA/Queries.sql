/*
2022-07-10
*/

WITH
  t1 AS (
  SELECT
    customer_id,
    MIN(payment_date) AS first_payment,
    SUM(amount) AS total_revenue
  FROM
    `jrjames83-1171.sampledata.payments`
  GROUP BY
    customer_id ),
  t2 AS (
  SELECT
    customer_id,
    amount,
    ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY payment_date) AS nth_order
  FROM
    `jrjames83-1171.sampledata.payments` )


SELECT
  t1.customer_id, cast(t1.first_payment as date) as first_payment_date, round(t1.total_revenue, 2) as total_revenue, t2.amount as first_order_val
FROM
  t1
LEFT JOIN
  t2
ON
  t1.customer_id = t2.customer_id
  AND t2.nth_order=1

/*
2022-07-11
*/
WITH
  bt AS (
  SELECT
    *,
    AVG(Close) OVER(ORDER BY Date ROWS BETWEEN 50 PRECEDING AND CURRENT ROW) AS fifty_ma,
    AVG(Close) OVER(ORDER BY Date ROWS BETWEEN 200 PRECEDING AND CURRENT ROW) AS twohundred_ma
  FROM
    `jrjames83-1171.sampledata.stock_prices`
  ORDER BY
    Date ),
    
  bt2 AS (
  SELECT
    *,
    CASE
      WHEN fifty_ma > twohundred_ma THEN "Buy"
    ELSE
    "Sell"
  END
    AS flag
  FROM
    bt )


SELECT
  *
FROM (
  SELECT
    *,
    LAG(flag) OVER(ORDER BY date) AS prev,
    flag <> LAG(flag) OVER(ORDER BY date) AS tipping_point,
  FROM
    bt2
  ORDER BY
    Date )
WHERE
  tipping_point =TRUE

/*
2022-0711
*/
WITH
  basetable AS (
  SELECT
    p.customer_id,
    f.rating,
    SUM(p.amount) AS amount
  FROM
    `jrjames83-1171.sampledata.payments` p
  LEFT JOIN
    `jrjames83-1171.sampledata.rental` r
  ON
    p.rental_id = r.rental_id
  LEFT JOIN
    `jrjames83-1171.sampledata.inventory` i
  ON
    r.inventory_id = i.inventory_id
  LEFT JOIN
    `jrjames83-1171.sampledata.film` f
  ON
    f.film_id = i.film_id
  GROUP BY
    p.customer_id,
    f.rating),

  bt2 AS (
  SELECT
    *,
    MAX(amount) OVER(PARTITION BY customer_id) AS amtOrder,
    ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY amount DESC) AS ratingOrder
  FROM
    basetable )

SELECT
  customer_id,
  rating,
  amount
FROM
  bt2
WHERE
  ratingOrder <3
ORDER BY
  amtOrder DESC

/*
2022-07-12
*/
WITH
  basetable AS (
  SELECT
    EXTRACT(quarter
    FROM
      p.payment_date) AS quarter,
    p.customer_id,
    f.rating,
    SUM(p.amount) AS amount
  FROM
    `jrjames83-1171.sampledata.payments` p
  LEFT JOIN
    `jrjames83-1171.sampledata.rental` r
  ON
    p.rental_id = r.rental_id
  LEFT JOIN
    `jrjames83-1171.sampledata.inventory` i
  ON
    r.inventory_id = i.inventory_id
  LEFT JOIN
    `jrjames83-1171.sampledata.film` f
  ON
    f.film_id = i.film_id
  GROUP BY
    quarter,
    p.customer_id,
    f.rating),

  bt2 AS (
  SELECT
    *,
    MAX(amount) OVER(PARTITION BY customer_id, quarter) AS amtOrder,
    ROW_NUMBER() OVER(PARTITION BY customer_id, quarter ORDER BY amount DESC) AS ratingOrder
  FROM
    basetable )
    
SELECT
  quarter,
  customer_id,
  rating,
  amount
FROM
  bt2
WHERE
  ratingOrder <3
ORDER BY
  amtOrder DESC


/*
2022-07-14
*/
WITH
  bt AS(
  SELECT
    tag,
    title,
    id,
    SPLIT(title, ' ') AS words
  FROM
    `jrjames83-1171.sampledata.top_questions`),

  word_table AS(
  SELECT
    tag,
    title,
    TRIM(LOWER(word)) AS word
  FROM
    bt,
    UNNEST(words) AS word
  ORDER BY
    title )

SELECT
  tag,
  word,
  freq

FROM (
  SELECT
    tag,
    word,
    COUNT(word) AS freq,
    ROW_NUMBER() OVER(PARTITION BY tag ORDER BY COUNT(word) DESC) AS row_n
  FROM
    word_table
  WHERE
    LENGTH(word) > 4
  GROUP BY
    tag,
    word
  ORDER BY
    tag,
    freq DESC )

WHERE
  row_n <3