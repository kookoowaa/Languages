# Typecasting

- Most principle way of typecasting is by using method such as `toStirng()`

- Or for the way around, `as?` can be used if it is not certain the type is valid.
  (In this case, `null` is returned if the type is invalid)

  ```kotlin
  var test : String? = 1 as? String
  print(test) // null
  ```

  

