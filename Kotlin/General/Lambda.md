# Lambda Expression

- Lambda expression is a function with no name declared

- The basic syntax is like `{variable(s) -> function_body}`, where `->` operator implies lambda expression

- The below is same function using `fun` and `lambda expression`:
  ```kotlin
  fun add_fun(a: Int, b:Int): Int {
    return a+b
  }
  
  //val add_lambda: (Int, Int) -> Int = {a: Int, b:Int -> a + b}
  val add_lambda = {a: Int, b:Int -> a + b}
  
  fun main(){
    println("This is a function with result of ${add_fun(1,2)}")
    println("This is a lambda with result of ${add_lambda(1,2)}")
  }
  
  // This is a function with result of 3
  // This is a lambda with result of 3
  ```
  
