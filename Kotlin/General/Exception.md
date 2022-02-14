# Exception handling

- Exception terminates program with runtime problems when:

  > - running out of memory,
  > - array out of bound,
  > - division by zero,
  > - and else

- There are three different keywords to handle exception which are:

  > - `try`
  > - `catch`
  > - `finally`

### `try`

- `try` block tests statement that may or may not throw an exception
- It should be followed by `catch` and/or `finally`

### `catch`

- `catch` block catches exception from try block

### `finally`

- `finally` **always** execute regardless of an exception (important statement!)

___

- most typical syntax of exception handling is as follows:

  ```kotlin
  try {
      // test statement block    
  } catch (e: {Type of exception}){
      // exception handling block if test throws an exception type 1
  } catch (e: {Type of exception}){
      // exception handling block if test throws an exception type 2
  } finally {
      // do whatevery that needs to be done regardless of exception (i.e. memory cleanup)
  }
  ```
  



### `throw`

- `throw` is used to throw an exception explicitly, instead of handling one

- It is often used with conditional statement as follows:

  ```kotlin
  fun validation(age: Int){
      if (age < 18) {
          throw ArithmeticException("under age")
      } else {
          continue
      }
  }
  ```
