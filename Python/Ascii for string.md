## Ascii 활용 문자데이터 처리

- 알파벳 데이터를 처리하는 경우 Ascii를 활용하면 알파벳을 숫자로 converting, 순서대로 비교할 수 있게 됨
- 이때 `ord()` 함수를 사용해서 문자 -> 숫자로 변환이 가능하며, `chr()` 함수로 숫자 -> 문자 변환이 가능
- 몇몇 주요 Ascii를 살펴보면 다음과 같음:
  ```python
  ord('A') == 65
  ord('Z') == 90
  ord('a') == 97
  ord('z') == 122
  ```

