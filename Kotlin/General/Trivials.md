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

## 3. lateinit

- When declaring a class, using `lateinit`, a variable can be defined later on in the code:
  
  ```kotlin
  class myClass(){
      lateinit var arg1: String
  }
  ```

## 4. List

- When creating a list, `listof({item1}, {item2})` is bring used

- A list can consist of single datatype or of any datatype followed by `: List<datatype>`

  ```kotlin
  var stringList: List<String> = listof("A", "B", "C")
  var mixedList: List<Any> = listof(1, "String", 1.1, "etc.")
  ```

  

