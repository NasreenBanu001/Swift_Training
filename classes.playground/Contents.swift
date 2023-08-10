import Foundation

var greeting = "Hello, playground"

class Person{
    var name:String
    var age:Int
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    func increraseage(){
        self.age += 1
    }
}
let personcall = Person(name: "celina", age: 24)
personcall.name
personcall.age
personcall.increraseage()
personcall.age
let foo = personcall
foo.increraseage()
foo.age
foo.age += 10
foo.age
personcall.age

if foo === personcall{
    "foo and personcall point to same memory "
}
else{
    "foo and personcall doesnt point to same memory "

}


class vehicle{
    func goVroom() -> String  {
        "vroom vroom"
    }
}
class car : vehicle{
    
}
let Car = car()
print(Car.goVroom())



class Person2{
    private (set) var age: Int
    init(age: Int){
        self.age = age
    }
    func incrementAge() -> Int {
        self.age += 1
        return age
    }
}
let person2 = Person2(age: 10)
person2.age
person2.incrementAge()
person2.age



//initializer:

class Tesla{
    let manufacturer = "Tesla"
    let model : String
    let year: Int
    
    init(){
        self.model = "X"
        self.year = 2023
    }
    init( model: String, year: Int){
        self.model = model
        self.year = year
    }
}

class TeslaModelY: Tesla{
    override init(){
        super.init(model: "Y", year: 2023)
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer


let newperson = Person2(age: 20)
newperson.age
func dosomething(with person: Person2){
    person.incrementAge()
}
dosomething(with: newperson)
newperson.age

//deinit:

class Myclass{
    init(){
        "initializer"
    }
    func dosomething(){
        "Lets do something"
    }
    deinit {
        "Deininitializer"
    }
}
let myclosure = {
    let my = Myclass()
    my.dosomething()
}

myclosure()
