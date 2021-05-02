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
- 

https://www.youtube.com/watch?v=eMh3STI68LA

