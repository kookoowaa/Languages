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

  

 ## Set and Map

-  **Set** or `setOf()` creates collection without duplicated element

  ```kotlin
  fun main(){
      
      var test = setOf("aaa", "bbb", "ccc", "aaa")
      print(test.size)
      print(test)
      
  }
  // 3
  // [aaa, bbb, ccc]
  ```

- Set does not allow indexing, but it can be done via `.elementAt()`

  ```kotlin
  fun main(){
      
      var test = setOf("aaa", "bbb", "ccc", "aaa")
      print(test[0])
      print(test.elementAt(0))
      
  }
  // error
  // aaa
  ```

- Alternatively, it can be converted as a mutable list `.toMutableList()` to index and/or edit elements

  ```kotlin
  fun main(){
      
      var test = setOf("aaa", "bbb", "ccc", "aaa")
      var testMutable = test.toMutableList()
      print(testMutable[0])
      
      testMutable.add("ddd")
      print(testMutable)
      
  }
  // aaa
  // [aaa, bbb, ccc, ddd]
  ```

- **Map** contains key-value set of collections just like python dictionary, where mapping is done via "to"

  ```kotlin
  fun main() {
      
      var test = mapOf(1 to "Monday", "two" to "Tuesday", "three" to 3)
      println(test)
      
      for (k in test.keys){
          println("$k for ${test[k]}")
      }
  }
  // {1=Monday, two=Tuesday, three=3}
  // 1 for Monday
  // two for Tuesday
  // three for 3
  ```

- Map is immutable when first declared, and can be converted mutable with `toMutableMap()`
  When it becomes mutable, it can assign key as in index to collection followed by value (i.e. `mutableMap["this is index"] = "this is value"`)

  ```kotlin
  fun main() {
      
      var test = mapOf(1 to "Monday", "two" to "Tuesday", "three" to 3)
   	test = test.toMutableMap()
      
      test[4] = 4
      test["five"] = "Friday"
      
      print(test)
  }
  
  //{1=Monday, two=Tuesday, three=3, 4=4, five=Friday}
  ```

## ArrayList

- ArrayList is a dynamic array with dynamic length, able to read and write

- The basic syntax to creat an empty is as follows `ArrayList<E>()`

- There are a couple of fundamental functions that are very useful:

   ```kotlin
   fun main(){
   
      var test = ArrayList<Any?>()
      test.add(1)
      test.add("Two")   
      // .add() adds element to the ArrayList

      println(test)
      // [1, Two]
      println(test.get(1))
      // .get() returns element of the index
      // Two
      
      test.remove(1)
      println(test)
      // .remove() removes element at index
      // [Two]      

      test.clear()
      println(test)
      // .clear() removes all the elements in ArrayList
      // []
   }
   ```

- `.iterator()` works as for loop in collections that:

   ```kotlin
   fun main(){
   
      var test = ArrayList<Any?>()
      test.add(1)
      test.add("Two")   
      // .add adds element to 

	  var testloop = test.iterator()
      
      while (testloop.hasNext()){
          println(testloop.next())
      }
   }
   ```
  
