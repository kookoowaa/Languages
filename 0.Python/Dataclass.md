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

