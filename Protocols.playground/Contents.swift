import Foundation
//protocols
protocol canBreath{
    func breath()
}
struct animal: canBreath{
    func breath() {
        "animal breathing"
    }
}

struct human: canBreath{
    func breath() {
        "human breathing"
    }
}

let dog = animal()
dog.breath()
let person = human()
person.breath()


//to have body to the functions in protocols or to have body, we use Extensions:

protocol canJump{
    func jump()
}
extension canJump{
    func jump(){
        "jumping"
    }
}
struct cat : canJump{
    
}

let whiskers = cat()
whiskers.jump()


protocol HasName{
    var name: String {get} //if only get is given...then body should be let
    var age: Int {get set}
}
extension HasName{
    func describeName() -> String{
        "Your name is \(name) and you are \(age) year old."
    }
    mutating func incrementAge(){
        self.age += 1
    }
}
struct Dog : HasName{
    let name: String
    var age: Int
}

var woof = Dog(name: "woof", age: 10)
woof.name
woof.age
woof.age += 1
woof.age
woof.describeName()
woof.incrementAge()
woof.age


protocol Vehicle {
    var speed : Int {get set}
    mutating func increasespeed(by value : Int)
}
extension Vehicle{
    mutating func increasespeed(by value : Int){
        self.speed += value
    }
}
struct Bike : Vehicle{
    var speed : Int
    init(){
        self.speed = 0
    }
}

var bike = Bike()
bike.speed
bike.increasespeed(by: 10)
bike.speed

func discribe( obj: Any){
    if obj is Vehicle{
        "object confirms to vehicle protocol"
    }
    else{
        "object does not confirms to vehicle protocol"
    }
}
discribe(obj: bike)

func increasespeedIfVehicle( obj : Any){
    if var  vehicle = obj as? Vehicle{
        vehicle.speed
        vehicle.increasespeed(by: 10)
        vehicle.speed
    }
    else{
        "this is not an vehicle"
    }
}
increasespeedIfVehicle(obj: bike)
bike.speed //change bike into a class...u wi.ll get 20 , becoz it will be reference type.\, whereas struct is value type
