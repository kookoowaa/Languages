# If Statement as Expression

- In kotlin, variable can be assigned as a result of if statement as follows;
  
  ```kotlin
  var age :Int = 11;
  
  var odd_even :String =  if(age%2==0){
                              "Even"
                          }else{
                              "Odd"
                          }
  
  println(odd_even)
  // Even
  ```
