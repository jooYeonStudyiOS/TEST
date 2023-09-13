
//반복문
//for 문

/*
for 루프 상수 in 범위 {
   ....
}
*/

for number in 1...5 {
    print(number)
}

//number = 1  프린트
//다시 number = 2 프린트
//3
//4
//5 출력


//배열을 사용해서 반복문 사용
var snacList = ["포카칩", "포테토칩", "프링글스", "눈을감자"]

for i in snacList {
    print("과자 리스트 \(i)")
}

// index 0번인 포카칩부터 프린트 시작
//과자 리스트 포카칩
//과자 리스트 포테토칩
//과자 리스트 프링글스
//과자 리스트 눈을감자

for i in 0...snacList.count - 1 {
    print("과자 순위 \(i + 1)위 \(snacList[i])")
}

//과자 순위 1위 포카칩
//과자 순위 2위 포테토칩
//과자 순위 3위 프링글스
//과자 순위 4위 눈을감자


// 루프 상수 생략
// 언더바(_)로 표시 가능
let size = 5
let padChar = "0"
var keyword = "3"

for _ in 1...size {
    keyword = padChar + keyword
}

print("\(keyword)")
// 출력 000003


// 중첩해서 사용하기
for i in 1..<2 {
    for j in 1..<10 {
        print("\(i) * \(j) = \(i * j)")
    }
}

//1 * 1 = 1
//1 * 2 = 2
//1 * 3 = 3
//1 * 4 = 4
//1 * 5 = 5
//1 * 6 = 6
//1 * 7 = 7
//1 * 8 = 8
//1 * 9 = 9


//while 조건 {
//   ....
//}

var result = 0
while result < 10 {
    result += 1
    print(result)
}

//result가 10 미만일 때 계속 반복
//result가 10이 되면 반복 종료

// 1부터 10까지 출력
