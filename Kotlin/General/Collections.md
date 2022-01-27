# Collections

- Collections are available as 1) collections of only the same element  (i.e. IntArray, BooleanArray), and 2) collections of mixture of element (i.e. list)
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




## List

- The biggest benefit of using list or `listOf()` is that it can contain any type of element

- When a list is created, it is immutable and neither element nor the list object is replaceable by other values:

  ```kotlin
  fun main(){
      var test = listOf("aaa", "bbb")
      test[0] = "aaaa"
      
      //or
      
      test.addAll(arrayOf("ccc", "ddd"))
  }
  
  // Error
  ```

- In order to edit list, it has to be converted as mutable list  `{list}.toMutableList()`, or even create via `mutableListOf()`:

  ```kotlin
  fun main(){
      var test = listOf("aaa", "bbb")
      test = test.toMutableList()
      test[0] = "aaaa"
      
      print(test)
  }
  //[aaaa, bbb]
  
  fun main(){
      var test = mutableListOf("aaa", "bbb")
      test[0] = "aaaa"
      
      print(test)
  }
  //[aaaa, bbb]
  ```

- `.addAll()` concatenate list, and `.add()` works as `.append()` in python:

  ```kotlin
  fun main(){
      var test = mutableListOf("aaa", "bbb")
  
      test.addAll(arrayOf("ccc", "ddd"))
      test.add("eee")
      
      print(test)
  }
  //[aaa, bbb, ccc, ddd, eee]
  ```

- In order to remove, `.removeAt(index: )` is used:

  ```kotlin
  fun main(){
      var test = mutableListOf("aaa", "bbb")
      
      test.removeAt(0)
      
      print(test)
  }
  //[bbb]
  ```

  

