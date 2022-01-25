# Collections

- Collections are available as 1) collections of only the same element  (i.e. IntArray, BooleanArray), and 2) collections of mixture of element (i.e. array)
- From different scope, there are immutable ones like `mapOf` that is similar to the dictionary of python, and of course mutable collections



## Arrays

- The syntax to assign array is not much different from assigning Kotlin variables:

  ```kotlin
  var numbers: IntArray = intArrayOf(1,2,3,4,5)
  
  var numbers = intArrayOf(1,2,3,4,5) // because of type inference
  
  var numbers = ArrayOf(1,2,3,4,5) // typeinference here as well
  ```

- For the purpose of debugging, `print()` statement would not work as expected, where it would require additional method `contentToString()`:

  ```kotlin
  print(numbers)
  // [Ljava.lang.Integer;......]
  
  print(numbers.contentToString())
  // [1, 2, 3, 4, 5]
  ```

- Indexing array works fine just like other languages, and replacing values works fine via indexing as well:

  ```kotlin
  print(numbers[0])
  // 1
  print(numbers[4])
  // 5
  
  numbers[0] = 6
  print(numbers.contentToString())
  // [6, 2, 3, 4, 5]
  ```

- Array can store **data class** as well, which is very practical in real use:

  ```kotlin
  data class Fruit(val name: String, val price: Double)
  
  var fruits = arrayOf(Fruit("Apple", 2.5), Fruit("Orange", 3.0))
  ```

  

- 

