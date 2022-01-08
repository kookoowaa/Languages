# Functions

## 1. Declaration

- Declaration is no much different from other language

- There are **`fun`** to declare function, **parameters** required to carry out function, logics to run funtion, and **return** that returns result of function

- Put together, the function would look like below;
  
  ```kotlin
  fun main(){
      myFunction()
      print(calcFunct(1, 3))
  }
  
  fun myFunction(){
      println("called from My Function")
  }
  
  fun calcFunct(intA: Int, intB: Int): Int{
      var result = intA + intB
      return result
  }
  
  // called from My Fucntion
  // 4
  ```



> Parameter & Argument
> 
> - Parameter is the variable **part of the method declaration**
> 
> - Argument is an expression used when **calling the method**
