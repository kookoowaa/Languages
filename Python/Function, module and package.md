### function의 구조

```python
def functionName(parameter1, parameter2):
    print(parameter1)
    return parameter2

functionName(argument1, argument2)
```



### Module

- 쉽게 얘기하면, `variable`, `fuction` 및 `class`로 구성되어 있는 `.py` 파일
- 모듈이 실행 하는 `.py` 파일과 동일한 로케이션에 위치해 있다면 정상적으로 import 가능 (혹은 PythonPath설정 이후 )



### Package

- 모듈들이 디렉터리 형태로 구조화 되어져 있는 경우를 패키지라고 명칭
- 과거에는 `__init__.py` 가 필수였으나 python 3.3 이후 선택적으로 사용 가능
- 하지만 여전히 사용한다면, import 시 호출 용이성, 변수/함수/클래스 제한  등 유용하게 사용될 수 있음





