# When instead of if statement

- `if` statement is replacable by `when` statement, if conditions are limited to a single variable

- The below are the same conditions using both `if` and `when` statement;
  
  ```kotlin
  var month = 3;
  
  if (month in 3..5){
        println("spring")
    }else if (month in 6..8){
        println("summer")
    }else if (month in 9..11){
        println("autumn")
    }else{
        println("winter")
    }
    // spring
  
  when (month) {
        in 3..5 -> println("spring")
        in 6..8 -> println("summer")
        in 9..11 -> println("autumn")
        12, 1, 2 -> println("winter")
    }
    // spring
  ```
