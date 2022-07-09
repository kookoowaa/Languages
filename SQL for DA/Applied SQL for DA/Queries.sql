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