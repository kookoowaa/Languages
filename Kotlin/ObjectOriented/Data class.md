# Data Class

- Creation of **Data class** is also allowed in Kotlin, in a similar form of dictionary in python

- Most simple way of declaring data class would look like:
  (constructor is required)

  ```kotlin
  data class myDataClass(val param1: Integer, var param2: String)
  // having at least one parameter is compulsory
  
  fun main(){
      var game1 = myDataClass(1, "League of Legends")
  }
  ```

- If parameter has been declared as value instead of variable, it will not be replaceable after object has been created:

  ```kotlin
  data class myDataClass(val param1: Integer, var param2: String)
  // having at least one parameter is compulsory
  
  fun main(){
      var game1 = myDataClass(1, "League of Legends")
      
      // game1.param1 = 2 will return error
      game1.param2 = "Starcraft"
  }
  ```

- `.copy` works on data class, and copying partial information is also allowed:

  ```kotlin
  var game2 = game1.copy(param2 = "Warcraft")
  // game2(param1=1, param2="Warcraft")
  ```

- Indexing data class is also allowed, by using `.component{n}()` method:

  ```kotlin
  game2.component1() // 1
  game2.component2() // Warcraft
  ```

- Decomposition is allowed in Kotlin as well:

  ```kotlin
  var (id, title) = game2
  // id = 1, title = Warcraft
  ```

  
