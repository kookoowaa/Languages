# Inheritance

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
