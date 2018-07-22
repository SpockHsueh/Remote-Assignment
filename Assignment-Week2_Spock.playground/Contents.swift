import Foundation
//////////////////////////////
//Objective-Oriented Swift

//1
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything")
    }
}


//2
class Elephant: Animal {
    override func eat() {
        print("I eat grass")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat")
    }
}


class Horse: Animal {
    override func eat() {
        print("I eat grass")
    }
}


//3
class Zoo {
    
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: .female))
let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .undefined)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse


//4
// class and struct different
// Initilizer between class and struct (class need create myself, struct will automatic)
// Inherit (class can , struct cannot)
// Referenct Type and Value Type
// override func



//5
// Struct: Value Type,  用來儲存data，裡面的資料是透過複製的方式呈現 (copy)，所以不會更改到原始值。
// Class: Reference Type, 裡面的資料無論如何複製或是變動，都是指向相同的位址資料 (share) 會直接修改到原始值 。
// Class 不會自動生成Initializer，需要自己宣告。而Struct反之(當然也可以透過手動宣告來變動)。


//6
// Type method can be called directly without create an instance, 需要在func前使用關鍵字 "static"
// Instance method need create an instance, 宣告後才能夠使用該方法


// 7
// ​Initilizer 代表當創造一個新的實體時，必須要實行的動作。無論是class or struct。
// 創造class or struct時，不知道資料或不想將資料寫死。
// 像第一題來Animal class 來說，我並不知道之後要創造的動物性別是什麼，所以我只宣告變數 gender 並給上型別。當之後創造動物時，在給上實際的性別。


//8
// 代表該方法所屬的上層class or struct


//9
// Referenct Type 透過儲存其在記憶體空間中配置的位置，意思就是會直接修改到原始資料 操作的不是拷貝 而是存在的實體本身
// Value Type 儲存實際值，透過拷貝的方式操作，當指派或傳遞後，兩者的值是各自獨立，不會互相影響，在swift裡 所有的基本型別都是值型別。





//////////////////////////////
//Enumerations and Optionals in Swift

//1
// case 92  case 95 是如何辦到的.. case 後面接的似乎只能String，有試過很多方法，但都無法實現，所以用_代替
enum Gasoline: String {
    case _92 = "92"
    case _95 = "95"
    case _98 = "98"
    case diesel = "diesel"
    
    func getPrice() -> String{
        return self.rawValue
    }
}

let price92 = Gasoline._95
print(price92.getPrice())

// Associate value: set when you create the enum and can be different values for every instance.
/*
 
enum LabelTxt {
 case Title(text: String)  // Associate value的宣告方法，可以是任何型別。
 case Footer(text: String)
}
 */



//2
var a: Int? = 10
// 使用if else 判斷是否有值
if let a = a {
    print(a)
}else {
    print("a is Nil")
}


class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
    
}

let people1 = People()
let cat = Pet(name: "Candy")

people1.pet = cat

if let pet1 = people1.pet {
    print(pet1.name)
} else {
    print("people1 don't have pet")
}


let people2 = People()
people2.pet = cat

// 這題不確定是否這樣寫，因為 guard let 沒有包在func 裡面的話，無法使用 print or return, 有試過fatalerror("...") 但是 如果條件是nil時 會crash
    func check(){
        guard let pet2 = people2.pet else {
            print("people2 don't have pet")
            return
        }
        print(pet2.name)
    }







//////////////////////////////
// Protocol in Swift


//1 2 3 4
protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Person: PoliceMan {
    var name: String
    var toolMan: ToolMan
    
    func arrestCriminals(){}
}


//5
struct Engineer: ToolMan {
    func fixComputer() {}
}


//6
let person = Person(name: "Steven", toolMan: Engineer())
print(person)



//////////////////////////////
//Error Handling in Swift

//1
enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
    

}


//2
let number = GuessNumberGame()

do {
    try number.guess(number: 20)
} catch let error {
    print("error: \(error)")
}




