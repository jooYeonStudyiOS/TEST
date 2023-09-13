
//1. if문

// 1 이상, 20 이하의 숫자 중 하나를 무작위로 반환하는 함수
var point = Int.random(in: 1...20)

//if 문 조건이 true 일 때 {} 코드를 실행하라
if point > 15 {
    print("고득점 입니디다")
}


// 1-1.if-else문
// if 조건이 true일 때 실행
if point > 15 {
    print("고득점입니다")

// false일 경우에 실행
} else {
    print("고득점이 아닙니다")
}


// 1-2. if-else if문

//자세하게 범위를 적어주는 편이 좋다
if point >= 0 && point < 5 {
     print("기초입니다")
 } else if point >= 5 && point < 10 {
     print("중급입니다")
 } else if point >= 10 && point < 20 {
     print("상급입니다")
 } else if point >= 20 {
     print("최상급입니다")
 } else {
     print("에러")
 }



// 2.switch 문
switch point {
case 0: print("입문이네요")
case 1..<5: print("기초네요")
case 5..<15: print("중급이네요")
case 15..<20: print("고급이네요")
default: print("에러")
}


// 3. guard 문
func divide(_ numerator: Int, by denominator: Int) {
    
    // denominator가 0이 아니다 = true 다음으로 넘어 가세요
    // denominator가 0이 아니다 = false guard에 막힙니다
    guard denominator != 0 else {
        print("분모는 0이 될 수 없습니다")
        return
        // 조건이 충족되지 않으면 함수 종료
    }
    
    let result = numerator / denominator
    print("결과 \(result)")
}

divide(10, by: 2)
// 출력 결과 5

divide(8, by: 0)
// 출력 분모는 0이 될 수 없습니다


// 4.#available 문
// if #available(<플랫폼이름 버전>, <...>, <*>) {
//    <해당 버전에서 사용할 수 있는 API 구문>
// } else {
//     <API를 사용할 수 없는 환경에 대한 처리>
// }

if #available(iOS 15, macOS 12, *) {
    // iOS 15 이상 또는 macOS 12 이상에서 사용 가능한 API를 사용하는 코드
    print("This API is available in iOS 15 or macOS 12.")
} else {
    // 지원하지 않는 플랫폼 버전 또는 그 외의 처리
    print("This API is not available in the current platform or version.")
}
