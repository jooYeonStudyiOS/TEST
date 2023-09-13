// 1. nil

let airport = ["한국":"서울", "일본":"도쿄", "중국":""]

print(airport["중국"])
//출력값 공백 optional("")
//중국이라는 key값이 있고 그 value는 공백이기 때문에 ""가 반환되는 것

print(airport["미국"])
//출력값 nil
//미국이라는 key가 없기 때문에 오류가 발생해서 nil값이 반환되는 것


/*
 2. 옵셔널 타입
 nil값을 사용할 수 있는 타입
 ? 을 사용
 조금이라도 오류가 발생할 가능성이 있다면 사용하는 것이 바람직하다
 따로 초기화 하지 않으면 초기화 값은 nil이다
 */

// 옵셔널 아닌 타입
// 기본적으로 데이터 타입은 모두 nil값을 가지지 못 한다
var name: String = "방울토마토"
// name = nil 은 할당할 수 없다

// 옵셔널 타입
var nameOptional: String?

print(nameOptional)
// 출력 nil


// 3. 옵셔널 래핑
var age = "13"

print(Int(age))
// 출력값 optional(13)
// age에 숫자가 들어 있으면 형변환이 제대로 이루어질 수 있지만
// 만약에 age에 문자가 들어 있으면 형변환이 제대로 이루어질 수 없다 = 오류 발생 가능성 있다!
// (예 age = "나이")

// 오류 발생 경우를 대비해서 optional이라는 박스에 넣어서 반환함 = 옵셔널 래핑


// 4. 옵셔널 언래핑
// 4-1 강제 해제 !
var optInt: Int? = 3

print("옵셔널 자체의 값 : \(optInt)")
// 출력값 : Optional(3)
// 옵셔널이라는 박스 안에 있음

print("!로 강제 해제한 값 : \(optInt!)")
// 출력값 : 3
// 옵셔널이라는 박스를 벗겨버림

print(optInt! + 7)
// 출력값 10
// 이제 연산이 가능해짐

// 강제 언래핑을 할 때는 옵셔널 값이 nil인지 체크 필요
var threeString = "three"
var three = Int(threeString)

var threeString2 = "123"
three = Int(threeString2)

if three != nil {
    print("숫자로 변환했습니당 \(three!)")
} else {
    print("숫자로 변환 불가능 - 에러 발생")
}
// threeString 일 때 출력 숫자로 변환 불가능 - 에러 발생
// threeString2 일 때 출력 숫자로 변환했습니당 123


// 4-2 if let
//if let은 지역변수처럼 if문의 코드 구현부 안에서만 사용 가능
//else 코드 없어도 되지만 만약 else 코드를 실행시켜야 하는 상황이 오면 아무 일도 발생하지 않는다

var threeIfLet = "3"

if let changeInt = Int(threeIfLet) {
    print(changeInt + 1000)
} else {
    print("형변환 에러")
}

//출력값 1003

threeIfLet = "three"

if let changeInt = Int(threeIfLet) {
    print(changeInt + 1000)
} else {
    print("형변환 에러")
}

//출력값 형변환 에러

if let changeInt = Int(threeIfLet) {
    print(changeInt + 1000)
}

//출력값 없음


// 4-3 guard let

// guard let 조건 else {
// 조건이 nil 값을 반환했을 때 실행
// }
// 조건이 nil 값이 아닐 때 실행

// 전역변수처럼 guard 밖에서도 변수 사용 가능
// else 코드 꼭 필요
// else 안에 제어문 전환 명령어(return 등)이 필요

var students = [101:"이철수", 102:"홍길동", 103:"김민수"]

func guardTest(studentNumber: Int) {
    guard let student = students[studentNumber] else {
        print("value 값 \(students[studentNumber])")
        return
    }
    print("value 값 \(students[studentNumber])")
    print("언래핑한 value 값 \(students[studentNumber])")
}

guardTest(studentNumber: 104)
// 출력 value 값 nil
// 104번 키가 없기 때문에 nil값을 반환했기 때문에

guardTest(studentNumber: 103)
// 출력 value 값 Optional("김민수")
// 출력 언래핑한 value 값 Optional("김민수")


// 4-4. 컴파일 자동 해제
let optionalNumber = Int("123")

if (optionalNumber == 123) {
    print("숫자는 같지만 \(optionalNumber) 입니다")
} else {
    print("이 프린트문은 실행되지 않습니다")
}

// 출력 숫자는 같지만 Optional(123) 입니다
// optionalNumber는 옵셔널 타입이고 123은 Int 타입이지만 컴파일러가 자동적으로 optionalNumber을 Int 타입으로 변경해서 비교해준다
// 하지만 언래핑을 해주는 것은 아니라서 프린트문 출력은 옵셔널 박스 안에 있는 것으로 나온다

var optionalNumber1 = Optional(123)
var optionalNumber2: Int? = 123

// 위의 두 개의 출력문도 마찬가지로
// 숫자는 같지만 Optional(123) 입니다  <- 이것


// 4-5. 묵시적 해제
var ten: Int! = 10

print(ten)
// 출력 Optional(10)

print(ten + 100)
// 출력값 110
// ten은 옵셔널값이지만 일반 타입처럼 사용할 수 있어서 연산 가능

// nil이 될 가능성이 있을 땐 사용하면 안 된다


// 5. 옵셔널 체이닝
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

if let roomCount = john.residence?.numberOfRooms {
    print("존은 \(roomCount) 개의 방을 갖고 있습니다")
} else {
    print("몇 개 있는지 알 수 없습니다")
}

// 출력 몇 개 있는지 알 수 없습니다
// john의 하위 프로퍼티까지 연속적으로 확인해보니 residence에서 nil 값을 반환하기 때문에 else 구문을 실행


john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    print("존은 \(roomCount) 개의 방을 갖고 있습니다")
} else {
    print("몇 개 있는지 알 수 없습니다")
}

// 출력 존은 1 개의 방을 갖고 있습니다
// john의 하위 프로퍼티까지 연속적으로 확인해보니 residence을 초기화했기 때문에 1으로 설정되어 있다 (nil값이 아님)

// 이렇게 residence의 값은 nil일 수도 아닐 수도 있기 때문에 ? 을 붙여서 사용하고 residence은 옵셔널 타입이다


// 5. 기본값 설정 ??
var optName: String?
optName = nil

print(optName ?? "손님")
// 출력 손님
