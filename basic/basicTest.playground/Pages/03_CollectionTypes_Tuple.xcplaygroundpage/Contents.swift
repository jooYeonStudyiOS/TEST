import UIKit

// 선언과 초기화
// 타입 어노테이션
let tupleSmaple: (String, String, Int) = ("tuple", "string", 100)

// 타입 추론
let tupleValue = ("a", "b", 1, 2.5, true)
// String, String, Int, Double, Bool 으로 추론하는데 정확하게 타입을 지정해주고 싶다면 타입 어노테이션을 사용할 것


// 추출하기
tupleValue.0
tupleValue.1


// 네임드 튜플(named tuple) 각 엘리멘트에 이름을 줄 수 있다
let error: (errorCode: Int, description: String) = (404, "Not Found")
print(error.errorCode)
// 출력 404


let tupleValue1: (String, Character, Int, Float, Bool) = ("a", "b", 1, 2.5, true)
let (a,b,c,d,e) = tupleValue1
print(a)
// 출력 a


// 함수에서 둘 이상의 값을 반환할 때 사용할 수 있다
func getTupleValue() -> (String, String, Int) {
    return("t", "v", 100)
}

let (returnA, returnB, ReturnC) = getTupleValue()
print(returnA)
// 출력 t


// 세 번째 값은 사용하지 않을 때는 언더바(_)로 표시하면 된다
let (return_a, return_b, _) = getTupleValue()
print(return_b)
// 출력 v


