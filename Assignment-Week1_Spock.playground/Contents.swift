
//////////////////////////////
//Swift Basic

//1
let PI: Double = 3.14

//2
let x = 10
let y = 6
let average = (x + y) / 2

print(average)

//3
// 宣告變數時，將型別設為Int
// (10 / 3) : 算出來的答案型別是Int
// (10.0 / 3.0) : 算出來的答案型別是Double

//4
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//5
var salary = 22000
salary += 28000
print(salary)


//6
// Equality operator is "=="

//7
let a = 10
let b = 3
let remain = a % b

//8
// let 是常數的意思，宣告後無法改變其值
// var 是變數的意思，宣告後可以在改變其值

//9
// 1 命名不能有空白隔開或連接號，2 變數常數的命名需配合 lower camel case




//////////////////////////////
//Swift Collection and Control Flow

//1
var myFriends: [String] = []

//2
myFriends.append("Ian")
myFriends.append("Bomi")
myFriends.append("Kevin")
myFriends

//3
myFriends.insert("Michael", at: myFriends.count)
myFriends

//4
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)


//5
for allFriend in myFriends {
    print(allFriend)
}

//6
// 沒有人
// 因為Array的第一筆資料是Index"0"開使算起，所以["Kevin", "Ian", "Bomi", "Michael"] 最多只到Index"3"

//7
//使用subscripting，例如 let result = Test[0]

//8
//使用subscripting搭配 .count方法，例如 let result = Test[Test.count - 1]



//////////////////////////////
//Dictionary

//1
var myCountryNumber: [String : Int] = [:]

//2
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
myCountryNumber

//3
myCountryNumber["GB"] = 0
myCountryNumber

//4
myCountryNumber = [:]
myCountryNumber



//////////////////////////////
//For, While, Repeat

//1
let lottoNumbers = [10,9,8,7,6,5]
for lastThree in 3...5 {
    print(lottoNumbers[lastThree])
}

//2
let sequence = stride(from: 10, to: 5, by: -2)

for result in sequence {
    print("For-in \(result)")
}

//3
var n = 10
while n > 5 {
    let result = n
    n = n - 2
    print("While\(result)")
}

//4
var m = 10
repeat {
    let result = m
    m = m - 2
    print("RepeatWhile\(result)")
} while m > 5

//5
var isRaining: String = "raining"
if isRaining == "raining" {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//6
var jobLevel: Int = 1
switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
    
default:
    print("We don't have this job")
}



//////////////////////////////
//Function in Swift
//TEST

//1
func greet(person: String) {
    print("Helo,\(person)")
}
greet(person: "Celeste")

//2
func multiply(a: Int, b: Int = 10) {
    print(a*b)
}
multiply(a: 5)

//3
// Argument label is using 在呼叫該function 時候會出現
// Pararmeter label is using 在 該function body 裡面執行

/* func multiply(Is a: Int, plus b: Int) {
 print (a+b) // Pararmeter label
 }
 multiply(Is: 10, plus: 5) // Argument label
 */

//4
//第一個fuction回傳String，第二個回傳Double




//////////////////////////////
//Others

// 首先開啟Xcode，建立一個Playground or Project, 接著 開啟終端機進入該資料夾。 輸入 git init。
// 打開Xcode，先將自己的GitHub帳號連結到Xcode,接著從 Source Control > Commit 記錄你在 playground 所做的修改。
// 接著切換到Source Control navigator，點選 Creaet xxx Remote on GitHub 上傳到自己的GitHub。(須將RepositoryName 結尾.playground 刪除，否則會產誤。)



