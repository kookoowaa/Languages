- 직접실행 창에서 `?{오브젝트}`를 입력하면 오브젝트에 할당되어 있는 값을 확인 가능
  혹은 `debug.print {내용}` 으로 콘솔창에 확인 가능

- Cell에 접근하는 방식은 `Range("D2")` 혹은 `Cells(2,4)` 처럼 가능

- `With`를 사용하면, `With` 이하의 구문을 재사용 가능 (띄어쓰기로 구분된 아래의 코드는 동일 기능 수행):

  ```
  Range("F8").CurrentRegion.Interior.ColorIndex = 0
  Range("F8").CurrentRegion.Font.ColorIndex = 0
  
  With Range("F8").CurrentRegion
      .Interior.ColorIndex = 0
      .Font.ColorIndex = 0
  ```

- `Range({인덱스}).CurrentRegion`은 인덱스 셀을 포함하는 데이터 테이블을 선택

- `Range({인덱스}).Resize({행크기},{열크기})`은 인덱스 셀로부터 지정한 범위만큼 새롭게 범위를 지정

- `For ~ Next`는 사실 `For ~ Next Step 1`와 같이 다시 적을 수 있으며 여기서 `Step {n}`으로 이동 크기를 지정할 수 있음 (음수 가능)

- Row를 선택하는 방법은 `Rows({n})` 혹은 `Cells({n}, {n 또는 알파벳}).EntireRow`로 선택 가능

- VBA 코드 창에서 좌상단 드랍다운에서 `일반` 대신 `Workbook`을 선택하면 우측 드랍다운이 이벤트로 바뀌며, `Open`, `BeforeClose` 등 이벤트에 대한 trigger 함수를 적용할 수 있음

- VBA 사전을 활용하면, 보다 쉽게 실무에서 활용 가능
  > 1. 일반적으로 모듈을 삽입하여 vba 코딩 작업
  > 2. `.xlam`(엑셀 추가기능)로 파일을 저장하면 vba 코드를 추가 기능으로 활용 가능
  > 3. 엑셀 메뉴 `파일 > 옵션 > 추가 기능 > 이동`을 클릭한 후 찾아보기를 통해 xlam 파일을 불러옴
  > 4. 이후 엘셀 인스턴스를 실행할 때마다 자동으로 저장한 vba 코드를 불러옴

- `Sub()`는 일련의 프로세스를 실행하고 끝나는 대신, `Function()`은 결과를 반환(return)하는데 중점

- 시트 인덱싱은 다음과 같은 방식으로 가능

  > 1. `Worksheets("시트1")`: 이름이 "시트1"인 시트 선택
  > 2. `Sheet1.Select`: 시트 속성명이 "Sheet1"인 시트 선택
  > 3. `Sheet(1).Select`: 시트 순서가 첫번째인 시트 선택

- `Select`와 `Activate`는 비슷한 기능을 수행하지만, `Activate`의 경우 범위 선택이 되어 있을 때 선택된 범위를 변경하는 것이 아니라 **활성화 된** 셀만 변경한다는 점에서 차이가 있음

- VBA로 차트를 다룰 때에는 상위 개념의 `ChartObjects`와 `CharObjects.Chart`가 있음:

  > - `ChartObjects`는 위치, 너비, 이름 등을 설정
  > - `ChartObjects.Chart`는 데이터 범위, 스타일 등을 설정
  > - `ChartObjects.Chart`에서 데이터 범위를 갱신할 때에는 `.SetSourceData`를 사용
  >   이 때 파라미터로 `Source:=`를 사용하며, 행/열을 변경할 때에는 `PlotBy:=` 파라미터를 사용
  > - 범례를 갱신할 때에는 `.SeriesCollection.NewSeries`로 SeriesCollection을 생성한 후, 하나씩 loop 돌며 `.SeriesCollection(i).Name` 값을 갱신
  >   혹은 `for each collection in .SeriesCollection`으로 loop를 도는 방식도 가능

- 셀 크기와 동일하게 `Object`크기를 가져가고 싶다면, 셀 범위를 `Range()`로 잡은 후 `Range().Width` 혹은 `Range().Height`로 범위의 크기를 불러올 수 있음

- 파이썬에서 `Try ... Except` 구문처럼 VBA에서 사용할 수 있는 구문은 `On Error Resume Next .... On Error GoTo 0`가 있음

- Excel에서 잠긴 파일도 해제가 가능하며, 이때는 zip 파일로 변경, `xl\worksheets\sheet{n}.xml`에서 `<sheetProtection>`항목을 삭제한 후 업데이트

- 배열을 사용하면 컴퓨터 리소스를 효율적으로 활용 가능

  > - 배열은 `Dim {배열명}()`으로 정의 가능하며, `Redim {배열명}(n)`으로 크기를 변경할 수 있음 (단, 처음 변수 정의 때 `{배열명}(n)`으로 정의 시 배열 크기는 고정)
  > - `Redim {배열명}(n)` 사용 시 배열 값들은 초기화 되며, 이때 초기화를 방지하려면 **`Redim Preserve {배열명}(n)`**으로 배열을 쌓아나아갈 수 있음
  > - 배열의 가장 큰 index 값은 `Ubound({배열명})`으로, 가장 작은 index 값은 `Lbound({배열명})`으로 구할 수 있으며, 이를 활용해서 배열의 크기를 구할 수 있음
  > - 2차원 배열은 `Redim {배열명}({행}, {열})`로 설정 가능하며, 단 **`Redim Preserve {배열명}({행}, {열})` 사용 시 `{열}` 값만 변경 가능** (`Application.Transpose({배열명})`을 사용하는 방법도 있으나, 사전에 배열 크기를 정해 놓을 수 있다면 보다 빠르게 연산 처리 가능)
  
- `Scripting.Dictionary`도 유용한 객체이며 장점은 다음과 같음:

  > - `Scripting.Dictionary`는 [`Key`, `Items`]가 쌍으로 연결된 객체임
  > - 배열의 크기를 미리 정하지 않아도 유연하게 확장할 수 있음
  > - 인덱스를 포함하지 않으나, `Key` 값을 기준으로 `Item` 값을 호출할 수 있음
  > - `{Dict}.Add {Key}, {Item}` 형태로 객체 값을 갱신
