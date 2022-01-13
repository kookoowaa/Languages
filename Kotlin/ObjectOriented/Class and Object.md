# Class

- Class is a blueprint of an object!

- using class/bluprint, different objects with different properties can be created



## 1. Defining class

- It is no much different from python in a way of defining class:
  
  ```kotlin
  class myClass(){
  
  }
  ```

- You can assign parameters in class by using `constructor`, but it does not need to be stated (or inside the class):
  
  ```kotlin
  class myClass constructor(param1: String, param2: String){
  
  }
  
  // is same as below
  
  class myClass(param1: String, param2: String){
  
  }
  
  // or like this
  
  class myClass(){
      constructor(param1: String, param2: String)
  }
  ```

- There is also an initializer `init{}` and it runs when object is created by class:
  
  ```kotlin
  class myClass(param1: String, param2: String){
  
      init{
          print("A myClass object has been created")
      }
  }
  ```



## 2. Properties (member variables) // method (function)

- The sample class above will not store any property when object is created, as the variables are **only declared within constructor scope**

- In order to keep the constructor variables and inherit to the object, it should be declared within class (`arg1` & `arg2`) such as:
  
  ```kotlin
  class myClass(param1: String, param2: String){
      // property    
      var arg1: String = param1
      var arg2: String = param2
  
  }
  ```

- Once it has been declared, it can be accessed via `{myClass Object}.arg1`

- The similar applies to method as follows:
  
  ```kotlin
  class myClass(param1: String, param2: String){
      // property    
      var arg1: String = param1
      var arg2: String = param2
  
      // method
      fun whatAreArgs(){
          println("there are argements here: $arg1 & $arg2")    
      }
  }
  ```

- Example of using `myClass` would look like:
  
  ```kotlin
  fun main(){
      var testClass = myClass(param1 = "ABC", param2 ="DEF")    
  
      println(testClass.arg1)
      // ABC
      testClass.whatAreArgs()
      // there are argements here: ABC & DEF
  }
  
  class myClass(param1: String, param2: String){
  
      // property    
      var arg1: String = param1
      var arg2: String = param2
  
      // method
      fun whatAreArgs(){
          println("there are argements here: $arg1 & $arg2")    
      }
  }
  ```



## 3. set/get for property

- Normally, `set()`/`get()` are by default, and not mendatory when declaring variable

- However, way to set/get property can be defined diferrently when declaring variable:
  
  ```kotlin
  class myClass(){
    var variable1: String = "TEST"
    // lines below are by default, but can be differently defined
  
    get() = field
    set(value){
        field = value
    }
  }
  ```

- If `get()`  line is to be changed as below, differnt value will be returned from `main()`:
  
  ```kotlin
  ...
  get(){
    return field.lowercase()   
  }
  ...
  
  ...
  print(myClass.variable1)
  // test
  ```

- Modifying `set()`, it can filter out field value if not in condition:
  
  ```kotlin
  ...
  set(value){
    field = if(value.len > 10) value else throw IllegalArgumentException
  }
  ...
  
  ...
  {myClass}.variable1 = "ABCDEFGHIJKLMNOP"
  // IllegalArgumentException errof
  ```
