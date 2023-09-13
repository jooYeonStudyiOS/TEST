// 산술 연산자

var a = 5
var b = 2

print("a + b = \(a + b)")
// 7

print("a - b = \(a - b)")
// 3

print("a * b = \(a * b)")
// 10

print("a / b = \(a / b)")
// 2
//2.5가 나와야하지만 a, b가 int로 타입추정되고 있기 때문에 몫인 2만 나옴
//int일 때는 몫 구하기 연산자
//double일 때는 나누기 연산자

print("a % b = \(a % b)")
//나머지 구하기 연산자
//int일 때 는 나머지 1 출력
//double일 때는 나머지가 없기 때문에 컴파일 오류가 난다

var result = a + b
result += 3 // result = result + 3
print(result) // ( 7 + 3 ) 10 출력

var result1 = a - b
result1 -= 3 // result = result - 3
print(result1) // ( 3 - 3 ) 0 출력


// 비교 연산자

var c = 10
var d = 5

print("10 == 5 \(c == d)")
// 10 == 5 false

print("10 != 5 \(c != d)")
// 10 != 5 true

print("10 > 5 \(c > d)")
// 10 > 5 true

print("10 < 5 \(c < d)")
// 10 < 5 false

print("10 >= 5 \(c >= d)")
// 10 >= 5 true

print("10 <= 5 \(c <= d)")
// 10 <= 5 false


// 논리 연산자

var korea: String = "한국"
var ko = "한국"

var japan = "일본"
var jp = "일본"

var cina = "중국"
var cn = "중국"

// and
// 첫 번째 값이 false면 두 번째 값은 판단하지 않는다

if korea == ko && japan == jp {
    print ("참 과 참")
}

if korea == jp && japan == jp {
    print("거짓 과 참")
}

if korea == ko && japan == cn {
    print("참 과 거짓")
}

// 출력 참과 참

//or
//둘 중 하나가 true면 true 반환
//첫 번째 값이 true면 두 번째 값은 판단하지 않는다

if korea == ko || japan == jp {
    print ("OR 참 과 참")
}

if korea == jp || japan == jp {
    print("OR 거짓 과 참")
}

if korea == ko || japan == cn {
    print("OR 참 과 거짓")
}

// 출력 3개 모두


// !
// 반대로 반환
// true -> fasle
// fasle -> true

if !(korea == ko) {
    print ("한국은 한국이 아니다")
}
// (한국 == 한국) true -> fasle 반환하므로 출력되지 않는다


if !(japan == cn) {
    print("일본은 중국이다")
}
// (일본 하고 중국은 다름) false -> true 반환하므로 출력된다


// 범위 연산자
var one = 1
var five = 5

for i in one...five {
    print(i)
}

// 출력 1 2 3 4 5

for i in one..<five {
    print(i)
}

// 출력 1 2 3 4

//3... / ...3 : 범위의 시작 혹은 끝만 지정


// 삼항 연산자

var result11 = korea == ko ? "참" : "거짓"
print(result11)
// 출력 참

result11 = ko == jp ? "참" : "거짓"
print(result11)
// 출력 거짓
