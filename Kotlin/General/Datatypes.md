# Variable Types

### Manifest Typing

- manifest typing is **explicit identification by the software programmer** of the *type* of each variable being declared

```kotlin
int myVariable = 3;


// or


var myVariable: Int = 3;
val myVariable: Int = 3;
```

- The below has no manifest types, but the compiler still infers the type for `a`, `b`, `c`:

```kotlin
var a = 3;
var b = "abc";
var c = 10 * 12.33;
```

___

### `var` vs `val` vs `const`

- `var`은 얼마든지 값을 갱신할 수 있으나, 변수 타입은 변경할 수 없음
- `val`은 javascript의 `cont`와 동일한 기능을 수행하며, 한번 선언한 값의 갱신을 지원하지 않음

___

### Comment block (주석처리)

- 주석처리는 기본적으로 `//`로 지정

- 여러 줄을 주석처리 할 때에는 `/* {내용} */`을 사용

- Android Studio에서는 커스텀주석으로 `TODO: {내용}`을 지원하며 일종의 북마크 역할을 수행 (Android Studio의 좌측 하단의 TODO 윈도우에서 확인 가능)

```kotlin
// this is a comment block


/*
This
is
also
a
comment
block
*/


// TODO: This is sample custom comment block
```

___

### Number Types

> #### Integer Types
> 
> - 아래와 같이 Type을 명시할 수도 있고, 명시하지 않았는데 정수일 경우 32-bit `Int`를 지정
> 
> | Types | bit |
> | ----- | --- |
> | Byte  | 8   |
> | Short | 16  |
> | Int   | 32  |
> | Long  | 64  |
> 
> ```kotlin
> val myByte: Byte = 12
> val myShot: Short = 125
> val myInt: Int = 123123123
> val myLong: Long = 1234675903489034
> 
> val myNum = 123 // Int
> ```

> #### Float Types
> 
> - 소수일 경우 64-bit `Double`을 default로 지정 
> 
> - `Float`를 지정할 때에는 소수 뒤에 `F`를 explicit 하게 명시하여야 함
> 
> | Types  | bit |
> | ------ | --- |
> | Float  | 32  |
> | Double | 64  |
> 
> ```kotlin
> val myFloat: Float = 13.37F;
> val myDouble: Double = 12.384798594;
> ```

---

### Other Types

> #### Boolean
> 
> - 여타 언어에서와 마찬가지로 참/거짓을 의미하며, `true/false` 둘중 하나의 값을 갖게 됨
> 
> ```kotlin
> var myBool: boolean = true;
> myBool = false;
> ```

> #### Character/String
> 
> - Character는 하나의 문자를 의미하며, String은 문자**열**을 의미함
> 
> ```kotlin
> var myChar: character = 'a';
> // myChar = '1123' doesn't work
> var myStr = "Hello World";
> var lastCharInStr = myStr[myStr.length - 1];
> 
> 
> print(lastCharInStr)
> ```

> 
