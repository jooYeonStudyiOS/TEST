// 1. Array

// 선언과 초기화
// 빈 배열로 초기화 - 값은 없고 틀만 있는 상태
var snackList0: [String] = []

// 값까지 넣어준 초기화
var snackList1: [String] = ["초코송이", "새우깡"]

// Array는 타입 추론 가능
var snackList2 = ["초코송이", "새우깡"]


// 추가
// 인덱스 0번에 빼빼로를 추가
// 처음 인덱스 0번에 있던 초코송이는 1번으로 이동한다
snackList1.insert("빼빼로", at: 0)
print(snackList1)
// 출력 : ["빼빼로", "초코송이", "새우깡"]


// 배열의 마지막에 추가
snackList1.append("포테토칩")
snackList1.append(contentsOf: ["양파링", "인디언밥"])
print(snackList1)
// 출력 : ["빼빼로", "초코송이", "새우깡", "포테토칩", "양파링", "인디언밥"]


// 수정
snackList1[0] = "민트빼빼로"
print(snackList1)
// 출력 : ["민트빼빼로", "초코송이", "새우깡", "포테토칩", "양파링", "인디언밥"]


// 삭제
snackList1.remove(at: 0)
print(snackList1)
// 출력 : ["초코송이", "새우깡", "포테토칩", "양파링", "인디언밥"]


// 배열 전부 삭제하기
snackList1.removeAll()


// 배열에 들어 있는 갯수
snackList1.count
print(snackList1.count)
// 출력 : 5




// 1-2. 2차원 Aarry
var sampleAarry: [[Int]] = [[1,2,3], [4,5,6,7]]

print("배열의 갯수 \(sampleAarry.count)")
// 출력 : 배열의 갯수 2


print("배열 0 \(sampleAarry[0])")
// 출력 : 배열 0 [1, 2, 3]

print("배열 0의 0 = \(sampleAarry[0][0])")
// 출력 : 배열 0의 0 = 1


print("배열 1 \(sampleAarry[1])")
// 출력 : 배열 1 [4, 5, 6, 7]

print("배열 1의 1 = \(sampleAarry[1][1])")
// 출력 : 배열 1의 1 = 5



