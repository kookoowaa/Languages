# Intent

- 안드로이드 프로젝트에서 여러개의 Activity (혹은 layout)이 있는 경우가 대부분

- 이때,  여러개의 activity간에 이동은 `startActivity()`와 `Intent()` 함수로 처리함

  ```kotlin
  //MainActivity.kt
  
  val intent = Intent(this, {옮겨갈Activity}::class.java)
  startActivity(intent)
  //finish()
  ```

- `Intent()`함수에서는, 자기 자신의 클래스 정보 `this`와, 옮겨갈 activity의 정보를 입력함

- `startActivity()`는 `Intent()`를 입력값으로 전달 받음

- 마지막으로 `finish()`는 main 창을 닫아주며, 선택적으로 사용 가능