import Foundation

var greeting = "Hello, playground"

struct person{
    let firstname: String?
    let lastname: String?
    
    enum Errors : Error{
        case firstNameIsNil
        case lastNameIsNil
        case BothNameIsNil
    }
    
    func getfullname() throws -> String{
        switch (firstname, lastname){
        case (.none,.none):
            throw Errors.BothNameIsNil
        case (.none, .some):
            throw Errors.firstNameIsNil
        case (.some, .none):
            throw Errors.lastNameIsNil
        case let (.some(firstname), .some(lastname)):
            return "\(firstname) \(lastname)"
        }
    }
}
let foo = person(firstname: "joes", lastname: nil )

do{
    let fullname = try foo.getfullname()
}catch{
    "got an error \(error)"
}
//other type:

do{
    let fullname = try foo.getfullname()
}catch let e{
    "got an error \(e)"
}

//to catch specific error:

do{
    let fullname = try foo.getfullname()
}catch is person.Errors{
    "got an error"
}

let bar = person(firstname: nil, lastname: nil)
do{
    let fullname = try bar.getfullname()
}catch person.Errors.firstNameIsNil{
    "first name is nil error"
}catch person.Errors.lastNameIsNil{
    "last name is nil error"
}catch person.Errors.BothNameIsNil{
    "both name is nil error"
}catch{
    "some other error"
}



struct car{
    let manufacturer: String
    
    enum Errors: Error{
        case invalidmanufacturer
    }
    init (
        manufacturer: String
    )throws{
        if manufacturer.isEmpty{
            throw Errors.invalidmanufacturer
        }
        self.manufacturer = manufacturer
    }
}

do{
    let mycar = try  car(manufacturer: "")
}
catch car.Errors.invalidmanufacturer{
    "The manufacturer should not be empty"
}catch{
    "some other error"
}

//optional in error handling 
if let yourcar = try? car(manufacturer: "Tesla"){
    "success your car = \(yourcar)"
}
else{
    "failed to construct and the errors are not accessible now"
}
