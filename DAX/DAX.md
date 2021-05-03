# Dax

> - DAX<sup>Data Analysis Expression</sup>는 Excel, Power Pivot, Power BI, SQL Management Studio 등에서 사용되는 언어입니다.
> - 범용성/확장성이이 다소 떨어지는 언어이지만, Microsoft 에서 활용된다는 점이 장점으로 나타나기도 합니다.

## 1. Dax의 수식

```dax
측정값 =  Calculate(
			sum( '테이블명'[변수명]),
				filter(allselected('테이블명'))
			)
```

- 수식의 결과 값은 **<u>측정값, 열 추가</u>**, 또는 **<u>새 테이블</u>** 형태로 반환될 수 있습니다.
- 인수는 일반적으로 **테이블**과 **변수(열)**이며, 이를 호출할 때에는 따옴표(테이블), 대괄호(변수)를 사용합니다.
- 일반적으로 "열 추가" 보다는 컨텍스트에 따라 값이 변경되는 "측정값"을 사용하는 것을 권장하며, 이 때 데이터 모델 상에서는 결과 값을 확인 하기 어렵다는 단점은 있습니다.
- 위의 `CALCULATE()` 함수가 가장 일반적으로 사용되는 함수 중 하나로, 첫번째 인자로 테이블(컬럼)을, 두번쨰 인자로 필터 조건을 내려 받아서 계산 값을 반환합니다.

## 2. Evaluation concept

- DAX에서 수식을 평가하는 context는 **filter context**와 **row context** 두가지가 있습니다.
- Filter context는 계산식이 열, 또는 행 매트릭스에 따라 다른 값을 반환하게 되는 것을 의미합니다.
  예를 들어 `Sales_unit = SUM('판매데이터'[sales])` 같은 수식이 있을 경우에, `Sum()`을 실행하는 context가 총 합계가 될 수도 있지만, 상품 종류, 년/월 등의 context에 따라 소계로 계산될 수 있음을 의미합니다.
- Row context는 기타 언어의 iteration 개념이 도입되어 있다고 볼 수 있으며, 통상적으로 함수 뒤에 `X`가 붙습니다. (예: `SUMX()`)
  `SUMX()`를 예를 들면, 첫번째 인자로 iteration이 실행될 테이블을 지정하고, 두번째 인자로 계산식이 입력됩니다. 따라서 `Sales_unit = SUMX(판매데이터, 판매데이터[sales]*2)` 같은 수식을 지정할 수 있습니다.
- Filter context를 바꿀 수 있는 유일한 방법으로는 `CALCULATE(수식, 필터수식...)` 함수가 있습니다.



https://www.youtube.com/watch?v=eMh3STI68LA

