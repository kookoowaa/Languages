# Nullable

## 1. Nullable

- When variable is being assigned, datatype is being assigned, and **`null` is not to be assigned**

- If null is to be assigned, question mark(?) should be descriptive next to datatype;
  
  ```kotlin
  var name :String = "Pablo"
  // name = null
  
  var nameNull :String? = "Pablo"
  nameNull = null
  ```

- The below two expression is basically returning the same result with nullable;
  
  ```kotlin
  if (nullableName != null){
      var lenNullable = nullableName.length
  } else {
      var lenNullable = null
  }
  
  var lenNullable = nullableName?.length
  ```

## 2. Elvis operator `?:`

- Using Elvis operator `?:`, continue if not null, and if null take specific value instead

- For an example below, if `name == null`, default value of `"Guest"` is to be assigned to;
  
  ```kotlin
  var name :String = "Pablo"
  var result = name ?: "Guest"
  println(result)
  // Pablo
  
  name = null
  var result = name ?: "Guest"
  println(result)
  //Guest
  ```

## 3. Not null assertion `!!`

- Under not null assertion `!!`, variable cannot take null under any condition and returns error;
  
  ```kotlin
  var name :String = "Pablo"
  var name = null
  
  println(name!!.lowercase())
  
  // error!
  ```
