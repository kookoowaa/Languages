# Onclick

- 안드로이드에서 권장하는 Onclick 이벤트 처리 방법은 `MainActivity.kt`에서 `setOnClickListener()`로 처리하는 방식이 대표적

- 하지만, 필요에 따라 `activity_main.xml`에서 직접 선언하는 방식이 더 유용한 경우도 있음

- 이때 처리 방식은 다음과 같음:

  ```xml
  <!-- activity_main.xml -->
  <Button
      android:id="@+id/btnSeven"
      android:layout_width="0dp"
      android:layout_height="match_parent"
      android:layout_weight="1"
      android:text="7"
      android:layout_margin="2dp"
      
      android:onClick="onDigit"
      />
  ```

  ```kotlin
  fun onDigit(view: View){
          Toast.makeText(this,"Button clicked", Toast.LENGTH_LONG).show()
      }
  ```

- 간단하게 정리하자면, `kotlin`에서 onClick 이벤트를 함수로 정의 내리고, `xml`에서 `android:onClick="{함수명}"`과 같이 onClick 이벤트를 호출