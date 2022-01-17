# Inheritance

## 1. basic structure

- A class is able to inherit features of another class

- When doing so, inheriting class should be **open**

  ```kotlin
  open class motherClass{
      
  }
  
  open class childClass: motherClass(){
      
  }
  
  class childchildClass: childClass(){
      
  }
  ```

- The inheriting class is called: Super class, Parent class, or Base class
  The inherited class is called: Sub class, Child class, or Derived class



## 2. inheriting features

- Working with inheritance, it should explicitly define features in Super class such as:

  ```kotlin
  fun main(){
      var test = ChildClass(param1 = "Test", param2 = 1, param3 = 1.0)
      println(test.variableA)
      test.functionA()
  }
  
  open class SuperClass(param1: String, param2: Int){
      var variableA: Double = 0.0
  
      fun functionA(){
          println("FunctionA")
      }
  }
  
  class ChildClass(param1: String, param2: Int, param3: Double): SuperClass(param1, param2){
  
  }
  ```

  

- Sub class should have at least the same constructor as Super class; having additional constructors is no problem for sub class

- Sub class is able to **override** 
