## Cohesion

- Cohesive code defines scope of code to a clear, single responsibility, like `math` library

- When a code and a class is multifunctional and serves different functions, it becomes less cohesive and less clear and more difficult to maintenance

- Example of a cohesive code:

  ```python
  def multiply(*args):
      out = 1
      for i in args:
          out = out * i
      return out
  
  def half(number):
      return number/2
  ```

- Example of weak cohesive code:

  ```python
  def handle_stuff(d: Data, q: int, screen: int, status: int):
      update_corporate_db(d, q, status)
      for i in range(0, q):
          profit[i] = revenue[i] - expense[i] * status
      new_col = c
      status = Success
      display_profits(sreen, status, d, c)    
  ```

## Coupling

- highly coupled code is very much dependent to inputs, and thus the maintenance becomes somewhat difficult

- example of highly dependent coupled code:

  ```python
  def checkEmailSecurity(email):
      if email.header.bearer.invalid():
          raise Exception("Email header bearer is invalid")
      elif email.header.received != email.header.received_spf:
          raise Exception("Received mismatch")
      else:
          print("Email header is secure")
  ```

- The code above is very much dependent to `email` object and changing something from one part of program will require changes from multiple areas

- Coupling is inevitable, but it is highly recommended to minimize it 
