# Color Preset

- 색상 같이 빈번하고 반복적으로 사용되는 값의 경우, Preset을 지정하여 호출하는 것이 여러모로 개발에 용이함

- Android Studio에서는 다음 위치에 color preset이 저장되어 있음`res\values\colors.xml`

- xml 파일을 살펴보면 아래와 같은 구조를 나타냄

  ```xml
  <?xml version="1.0" encoding="utf-8"?>
  <resources>
      <color name="purple_200">#FFBB86FC</color>
      <color name="purple_500">#FF6200EE</color>
      <color name="purple_700">#FF3700B3</color>
      <color name="teal_200">#FF03DAC5</color>
      <color name="teal_700">#FF018786</color>
      <color name="black">#FF000000</color>
      <color name="white">#FFFFFFFF</color>
      
      <!-- <color name="new color">#87D68D</color> -->
  </resources>
  ```

- 하단의 주석과 동일한 방식으로 신규 색상을 정의내릴 수 있으며, 이후부터는 정의 내린 이름 (i.e.`new color`) 을 사용해서 색상 호출이 가능

___

팔레트 추천

1. https://coolors.co/