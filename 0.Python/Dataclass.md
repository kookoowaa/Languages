## Python Dataclass

> - Python 3.7부터 표준 라이브러리로 등재되었으며, 데이터 클래스를 보다 용이하게 선언해주는 데코레이터로(`@dataclass`) 구현
> - 주요 장점으로 `__init__`, `__repr__`, `__eq__` 등의 메서드를 자동으로 정의해 주어 시각적으로 명료하게 코드 작성이 가능
> - 또한, 클래스간 값/순서 비교가 가능하며, 동일한 값을 가질 때에는 `True`를 반환



## 일반 class와 dataclass (기본 포맷)

- 일반적으로 데이터를 담는 class를 설계할 때에는 아래와 같이 코드를 작성

```python
class Person:
  name: str
  job: str
  age: int
  
  def __init__(self, name, job, age):
    self.name = name
    self.job = job
    self.age = age
  
## class 할당
person1 = Person("Pablo", "BA", 35)
person2 = Person("John", "Analyst", 20)
person3 = Person("John", "Analyst", 20)
```

- `@dataclass`를 사용할 때에는 아래와 같이 간단하고 명료하게 class 작성이 가능
  (parameter 이름과 데이터 타입만 지정해주면 끝)

```python
from dataclasses import dataclass

@dataclass
class Person:
  name: str
  job: str
  age: int
  
## class 할당
person1 = Person("Pablo", "BA", 35)
person2 = Person("John", "Analyst", 20)
person3 = Person("John", "Analyst", 20)  
```

## Dataclass의 강점

### 1.  Object가 아닌 data 비교가 가능

### 2. dataclass object의 대표값 설정 및 정렬이 가능

### 3. object의 값 업데이트를 막을 수 있음

### 4. print 되는 출력 문 포맷을 지정할 수 있음 (디버그)







## 참조

https://www.youtube.com/watch?v=vRVVyl9uaZc&t=177s
