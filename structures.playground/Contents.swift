import Foundation

//struct definition
struct persondetail{
    var name = " "
    var age = 0
}
//instance creation
var person1 = persondetail()
person1.name = "celina"
person1.age = 23

print("Name: \(person1.name) and Age : \(person1.age)")

//With memberwise initialization:

struct personinfo{
    var name: String
    var age: Int
}

var person1detail = personinfo(name: "nasreen", age: 22)
print("name: \(person1detail.name) and age: \(person1detail.age)")

//function inside a struct:

struct car{
    var carname: String
    var carnumber: Int
    
    func applybrake(){
        print("it has a hydralic brake")
    }
}

var newcar = car(carname: "AUDI", carnumber: 2056)
print("\(newcar.carname) of number \(newcar.carnumber)")
 
//struct with constructor:
struct cars{
    var carname: String
    var carnumber: Int
    init(carnumber: Int){
        self.carname = "BMW"
        self.carnumber = carnumber
    }
}
var carnew = cars(carnumber: 1245)
print("\(carnew.carname) of number \(carnew.carnumber)")

struct person2{
    var firstname:String
    var lastname:String
    var fullname:String {
        "\(firstname) \(lastname)"
    }
}
let personname = person2(firstname: "celina", lastname: "albert")
personname.firstname
personname.lastname
print("person's full name is: \(personname.fullname)")



struct newCar{
    var currentSpeed : Int
    mutating func drive(speed: Int){
        "Driving"
        currentSpeed = speed
    }
}
//not possible because It has let, whih is immutable
let immutablecar = newCar(currentSpeed: 10)
//immutablecar.drive(speed: 20)

var mutablecar = newCar(currentSpeed: 10)
let copy = mutablecar
mutablecar.currentSpeed
mutablecar.drive(speed: 20)
mutablecar.currentSpeed
//copy variable just contain the copy of mutablecar. So it wont be changed.
copy.currentSpeed


//how to reuse the struct without creating a copy of the variable.

struct bike {
    let manufacturer : String
    let currentSpeed : Int
    func copy(currentspeed : Int)-> bike {
        bike(manufacturer: self.manufacturer, currentSpeed: currentspeed)
    }
}
var bike1 = bike(manufacturer: "HD", currentSpeed: 10)
let bike2 = bike1
bike2.currentSpeed
var bike3 = bike(manufacturer: "hd", currentSpeed: 20)
bike3.currentSpeed
bike3.copy(currentspeed: 30)
