# Theme

- Default theme 파일은 `res/values/themes/themes.xml`에 위치해 있음
- 여기에서 기본적인 색상이나, StatusBar 등의 attribute를 설정할 수 있음

# 주요 세팅

1. action bar 관련

   ```xml
       <style name="Theme.{앱이름}" parent="Theme.MaterialComponents.DayNight.NoActionBar">
                   <!-- Customize your theme here. -->
           <item name="android:windowFullscreen">true</item>
       </style>
   ```

   - `<style... parent=...>`에서 parent를 `...NoActionBar`로 설정 시 상단의 타이틀 바를 제거할 수 있음(보기 안좋음)
   - 중간의 `<item name="android:windowFullscreen">true</item>` 설정 시 앱이 전체화면으로 실행되며, 시스템바를 숨김처리해줌