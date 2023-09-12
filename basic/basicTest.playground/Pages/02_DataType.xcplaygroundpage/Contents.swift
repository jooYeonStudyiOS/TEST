import Foundation

// 1.Int
// 부호 있는 정수값 (음수, 양수)
// 컴퓨터의 CPU에 따라 사용할 수 있는 범위가 정해져 있음
var temperatures: Int = -15
temperatures = 33


// 2.Uint
// 부호 없는 정수값 (0을 포함한 양수)
// 마찬가지로 사용할 수 있는 범위가 정해져 있음 (Int와 동일)
var age: UInt = 55


// 3.Float
// 32비트 부동소수점 데이터 타입
// 소수점 5~6자리 정도까지 표현 가능
var piF: Float = 3.1415926535897932384626433

print(piF)
// 출력값 3.1415927


// 4.Double
// 64비트 부동소수점 데이터 타입
// 소수점 15~16자리 정도까지 표현 가능
var piD: Double = 3.1415926535897932384626433

print(piD)
// 출력값 3.141592653589793


// 5.Character
// 한 개의 문자
// 큰 따옴표(" ") 를 사용
let alphavetA: Character = "A"


// 6.String
// 문자열
// 큰 따옴표(" ") 를 사용
let welcomMessage: String = "hello world"


// 7.Bool
// true, fasle 두 가지 종류값만 가지고 있는 데이터 타입
var shopIsOpen: Bool = true
shopIsOpen = false


// 8.Any
// 기본적으로 처음에 선언된 타입으로만 변경이 가능하하지만 Any는 모든 데이터 타입 사용 가능

// 문자열로 초기화
var anyVar: Any = "test"

// 실수형값으로 변경 가능
anyVar = 3.14

// Bool값으로 변경 가능
anyVar = true

// 정수형 값으로 변경 가능
anyVar = 100


var number: Int = 50
print(anyVar + number)
// anyVar는 any타입이고 number은 int
// 서로 다른 타입이기 때문에 두 변수를 더할 수 없다
// 에러 메세지 : Cannot convert value of type 'Any' to expected argument type 'Int'

