// 제어 전달문

// 1. breka
// 조건식은 10까지 반복이지만, 5가 되면 바로 종료
for number in 1...10 {
    if number == 5 {
        break
    }
    print(number)
}

// 출력 1, 2, 3, 4까지 출력


// 2. continue
for number in 1...10 {
    if number % 2 == 0 {
        continue // 짝수일 때 현재 반복 건너뜀
    }
    print(number)
}

// 3, 5, 7, 9 만 출력


// 3. fallthrough
let grade = "B"

switch grade {
case "A":
    print("최고")
case "B":
    print("고")
    fallthrough
case "C":
    print("일반")
case "D":
    print("헉?")
default:
    print("Unknown")
}

// 출력 일치하는 고, 그리고 그 다음인 일반 까지 출력


// 4. return

func add(a: Int, b: Int) -> Int {
    let result = a + b
    
    // a + b 값을 반환해준다
    return result
}

let sum = add(a: 5, b: 3)
print(sum)
// 5+3 = 8 값이 프린트 된다


// 함수 종료
func hello(name: String?) {
    guard let _name = name else {
        return
    }
    
    print("\(_name)님, 안녕하세요")
}

hello(name: nil)
// nil 값이므로 함수 종료


// 구문 레이블과 함께 사용
outerLoop: for i in 1...3 {
    innerLoop: for j in 1...3 {
        if i == 2 {
            break outerLoop // outerLoop 레이블로 지정된 루프만 종료
        }
        print("i: \(i), j: \(j)")
    }
}

/*
 출력
 i: 1, j: 1
 i: 1, j: 2
 i: 1, j: 3
 */

