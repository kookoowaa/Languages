# Trivials

## 1. Order by (works with column index)

- Order by works with **column name** or with **column index** starting from 1

## 2. Array functions

- There are functions that generates Arrays
- `array_agg()` return **a set of values in a single row as an array**, whereas `unnest()` does the opposite
- It works on from string to array using `string_to_array()` and there is also a function to take array and return strings like `array_to_string()`

## 3. With

- With `with`, SQL can add "statement scoped views", meaning **views not stored in the database schema**
- Views stated with `with` are only valid in the query it belongs to
- In a simple expression, `with` declares table in form of variable to be used repeatedly - subquery factoring

``` sql
with tbl_sample1 as (
	Select ...
    From ...
)

, tbl_sample2 as (
	Select ...
    From ...
)

Select ....
From tbl_sample1 as t1
inner join tbl_sample2 as t2
....
```

## 4. String format

- At the end of calculation, having `|| {string}` adds format in the end

- For example, if I were to add % in the end, the below should return 50% as a value:

  ```sql
  Select 
  	1/2 *100 || "%"
  From ...
  ```

## 5. AND in join clause

- It is often practical to join with conditional set of data, normally filtered by `where` clause

- It is also applicable in a much simpler way by filtering with `AND` in join clasue instead

- This is different from having it filtered from `where` clause, and if it does, it is going to be very similar to inner join:

  ```sql
  Select 
  	*
  From 
  	Table1 t1
  Join
  	Table2 t2 on t1.id = t2.id AND t2.value > 20
  ...
  ```

## 6. extract vs. date_trunc

- `extract()` returns value for the parameter it has requested for

- `date_trunc()` returns timestamp until the parameter it has requested for in datetime

- Below is the example:

  ```sql
  extract(year from "2022-06-01 11:19:33 UTC")
  -- 2022
  
  date_trunc("2022-06-01 11:19:33 UTC", year)
  -- 2022-01-01
  
  date_trunc("2022-06-01 11:15:22 UTC", week)
  -- 2022-05-29
  ```

## 7. date_add(timestamp, Interval {n} {period})

- `date_add()` allows handling timestamp data

- It takes timestamp as an input, do the calculation based on the interval requested as below:

  ```sql
  date_add(date("2022-06-01"), Interval 1 day)
  -- 2022-06-02
  
  date_add(date("2022-06-01"), Interval 1 month)
  -- 2022-07-01
  ```

  





