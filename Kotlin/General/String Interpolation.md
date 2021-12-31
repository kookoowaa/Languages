# String Interpolation

- String variables can be concatenated using `+`, but also by assigning variable inside string variable with `$`$: *string interpolation*

- String interpolation is evalutaing string literal as follows;
  
  ```kotlin
  fun main(){
      val strWorld: String = "Hello World";
      var strFirstWord = strWorld[0];
      print("this is to print $strWorld, starting with $strFirstWord; ")
      print("it is ${strWorld.length} length long")
  }
  ```

- If string interpolation is to use variable alone as a placeholder, \$ alone is enough`$variable` ; wheareas when using a class function it should be followed by curly bracket `${variable.function}`
