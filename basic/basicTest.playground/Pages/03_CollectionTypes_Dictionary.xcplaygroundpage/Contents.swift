// 선언과 초기화

var di = [String: Int]()
var di2 = Dictionary<String, Int>()

// 빈배열
var students4: [Int: String] = [:]

// 초기화
var students3: Dictionary = [101:"이철수", 102:"홍길동", 103:"김민수"]
var students2: [Int:String] = [101:"이철수", 102:"홍길동", 103:"김민수"]
var students = [101:"이철수", 102:"홍길동", 103:"김민수"]



// 딕셔너리 추가하기
students[104] = "이영희"

// 딕셔너리 수정하기
students[104] = "홍영희"
print(students)
// 출력 [101: "이철수", 104: "홍영희", 103: "김민수", 102: "홍길동"]


// 딕셔너리 수정 혹은 추가
// key가 없으면 추가
students.updateValue("강길동", forKey: 105)
print(students)
// 출력 [103: "김민수", 104: "홍영희", 105: "강길동", 102: "홍길동", 101: "이철수"]

// key가 있으면 수정
students.updateValue("유길동", forKey: 105)
print(students)
// 출력 [103: "김민수", 104: "홍영희", 105: "유길동", 102: "홍길동", 101: "이철수"]


// 수정 전 값을 반환
let valueTest = students.updateValue("최길동", forKey: 105)

print("딕셔너리 수정하기 \(String(describing: valueTest))")
//출력 유길동


print("딕셔너리 수정하기 \(students[105])")
// 출력 최길동


// 딕셔너리 제거하기
students.removeValue(forKey: 104)

let resultRmovue = students.removeValue(forKey: 103)
print(resultRmovue)
// 출력 김민수


// 딕셔너리 전부다 제거하기
//students.removeAll()


// 없는 key값으로 반환할 수도 있기 때문에 옵셔널이고 Nil을 출력
print(students[201])
