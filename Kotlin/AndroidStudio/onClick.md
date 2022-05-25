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



# Class로 상속

- Activity의 class에서 `OnClickLinster`를 상속하는 방법도 유용하며, 이경우 코드 진행이 많이 깔끔해짐

  ```kotlin
  class theActivity : AppCompatActivity(), View.OnClickListener{
      
      private var btnPress:Button? = null
      ...
      
      override fun onCreate(savedInstanceState: Bundle?) {
          super.onCreate(savedInstanceState)
          setContentView(R.layout.theActivity)
          
          btnPress = findViewByID(R.id.btn_Press)
          btnPress?.setOnClickListener(this)
          
          ...
          
      }
      
      override fun onClick(p0: View?){
          when (p0?.id){
              R.id.btn_Press -> {
                  //do stuff
              }
          }
      }
      
  }
  ```

- `OnClickListener`를 상속받게 되면, `onClick()` 메서드를 override 하게 되며, `onCreate()` 메서드 내에서 `{object}?.setOnClickListener(this)`로 이벤트를 트리거 할 수 있게 됨