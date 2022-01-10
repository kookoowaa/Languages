# Trivials

## 1. Increment & Decrement operators

- There is a similar sintax as python for increment & decrement operators: `+= -= *= /= %=`

- There are slinghtly different syntax where it comes before/after variable such as `intNum++ ++intNum`

- When `++` comes before variable, the increment evaluates variable before calculation; when it comes after, the increment is applied after evaluation.

## 2. in range

- in kotlin, `..` is equivalent to `range()` in python
  also, `# until #` can be used as well (for descending order, `# downto #`)
  *the same syntax can be written as `#.until(#)` or `#.downTo(#)`*

- It is self-explanatory, and please find the example below;
  
  ```python
  month = 3
  if(month in range(3,6)):
      print("Spring")
  
  ## Spring
  ```
  
  ```kotlin
  month = 3
  if(month in 3..5){
      print("Spring")
  }
  
  if (month in 3 until 6){
      print("Spring")
  }
  // Spring
  ```

## 3. Nullable

- When variable is being assigned, datatype is being assigned, and **`null` is not to be assigned**

- If null is to be assigned, question mark(?) should be descriptive next to datatype;
  
  ```kotlin
  var name :String = "Pablo"
  // name = null
  
  
  var nameNull :String? = "Pablo"
  nameNull = null
  ```

- The below two expression is basically returning the same result with nullable;
  
  ```kotlin
  if (nullableName != null){
      var lenNullable = nullableName.length
  } else {
      var lenNullable = null
  }
  
  
  var lenNullable = nullableName?.length
  ```
