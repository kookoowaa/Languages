## Python Dataclass

> Python 3.7부터 표준 라이브러리로 등재되었으며, 데이터 클래스를 보다 용이하게 선언해주는 데코레이터로 구현
> 주요 장점으로 `__init__`, `__repr__`, `__eq__` 등의 메서드를 자동으로 정의해 줄 뿐만 아니라,
> 

https://www.youtube.com/watch?v=vRVVyl9uaZc&t=177s

```python
class Person:
  name: str
  job: str
  age: int
  
  def __init__(self, name, job, age):
    self.name = name
    self.job = job
    self.age = age
  
```

```python
from dataclasses import dataclass

@dataclass
class Person:
  name: str
  job: str
  age: int
  
  
```

