// 2. Set

// 선언과 초기화

// 빈배열
let sampleSet: Set<String> = []


// []는 타입추론을 array로 함
let array = [1,1,1,1]
print("array \(array)")
// 출력 array [1, 1, 1, 1]


// 타입 어노테이션으로 선언
let set: Set = [1,1,1,1]
print("set \(set)")
// 출력 set [1]
// 중복을 허용하지 않기 때문에 1 만 출력


//집합
var two: Set = [2,2,2,2,2,2,4,6,8,8,12]
var three: Set = [3,6,9,12,15]

print(two)
// 출력 [6, 2, 8, 4, 12]


//집합 추가하기
two.insert(24)
print(two)
// 출력 [6, 2, 8, 24, 4, 12]


//집합 삭제하기
two.remove(2)
print(two)
// 출력 [6, 8, 24, 4, 12]


//집합 전부 다 삭제하기
//two.removeAll()
//print(two)


//특정 데이터가 들어있는지 확인
two.contains(12)
print(two.contains(12))
// 출력 true



//교집합
print(two.intersection(three))
// 출력 [12, 6]

//합집함
print(two.union(three))
// 출력 [8, 4, 12, 9, 6, 3, 15, 24]

//여집합
print(two.symmetricDifference(three))
// 출력 [8, 4, 9, 3, 15, 24]

//차집합
print(two.subtract(three))
// 출력 ()
