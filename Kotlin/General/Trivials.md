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


## 5. Visibility Modifier

- Visibility modifiers are the keywords to restrict the use of elements according to the scope agreed, which are;

  > `public`
  >
  > `private`
  >
  > `internal`
  >
  > `open`
  >
  > `protected`

- `public` modifier allows element to be accessible from anywhere in the project, and it is a **default modifier** in Kotlin

- `private` modifier allows element to be accessible only within the declared block

- `internal` modifier makes the field visible only inside the module

- `open` modifier allows class to be inheritable, where in Kotlin it is by default not inheritable

- `protected` modifier allows visibility to its class or subclass only

## 6. Nested and inner class

- **Nested class** is class inside another class

- **Inner class** is a kind of nested class, but with keyword inner

- Inner class is different from nested class that it can access the data member of outer class (even if it is private)

  ```kotlin
  class OuterClass{
      private var strName: String = "ID"
  
      class NestedClass{
          var intPass: Int = 12345
  
      }
      inner class innerClass{
    //if declared with inner, the object can access strName from outer class
          fun printOuter(){
              println("Name is ${name}")
          }
      }
  }
  
  fun main(){
  	println(OuterClass().NestedClass().intPass)
  	OuterClass().NestedClass().printOuter()
  }
  
  // 12345
  // Name is ID
  ```


## 7. Cast operators

- There are unsafe cast operator called `as`, and safe cast operator `as?`

- When using an unsafe cast operator, and data type does not match, it throws **ClassCastException**

  When using a safe cast operator, and data type does not match, it returns `null`:

  ```kotlin
  fun main(){
      var testSubject: Any? = "ABC"
      var testString: String? = testSubject as String?
  	println(testString)
  }
  // ABC
  
  fun main(){
      var testSubject: Any? = "ABC"
      var testInt: Int? = testSubject as Int?
    	println(testInt)
  }
  // java.lang.ClassCastExpetion....
  
  fun main(){
      var testSubject: Any = "ABC"
      var testString: String? = testSubject as? String
      var testInt: Int? = testSubject as? Int
   	println(testString)
      println(testInt)
  }
  // ABC
  // null
  ```

  

