import Foundation

func multiplyByTwo(_ value: Int? = nil) -> Int{
    if let value{
        return value * 2
    }
    else{
        return 0
    }
}
multiplyByTwo()
multiplyByTwo(5)
multiplyByTwo(nil)


let age: Int? = nil
if age != nil{
    "age is provided"
}
else{
    "age is nil , is it correct"
}

if let age {
    "age is there and the age is \(age)"
}
else{
    "no age is nil..not provided.."
}

func checkAge(){
    guard age != nil else{
        "age has no value..as we know"
        return
    }
    "for our suprise, age has a value"
}
checkAge()


//
let Age: Int? = 0
func checkAge2(){
    guard let Age else{
        "age is nil"
        return
    }
    "age is not nil...has a value \(Age)"
}

checkAge2()

//
switch Age{
case .none:
    "age has no value as expected"
    break
case .some(_):
    "age has a value"
    break

}

if Age == 0{
    "age has no value as expected"
}
else{
    "age is not nil...has a value"

}
//preferable
if Age == .some(0){
    "age has no value as expected"
}
else{
    "age is not nil...has a value"

}

//optional inside optional:

struct Person{
    let name: String
    let address: Address?
    struct Address{
        let firstLine: String?
    }
}

let foo = Person(name: "celina", address: Person.Address(firstLine: "small hut no-25"))

if let foofirstAddressline = foo.address?.firstLine{
    foofirstAddressline
}
else{
        "foo doesnt have first line address"
}

if let fooadress = foo.address,
   let firstline = fooadress.firstLine{
    fooadress
    firstline
}

let bar: Person = Person(name: "celina", address: Person.Address(firstLine: nil))

//if ((bar.name = "celina") != nil),
//   bar.address?.firstname == nil{
//    "bar's name is celina has no first line in address"
//}
//else{
//    "seems that something doesn't work right"
//}


let baz: Person? = Person(name: "bar", address: Person.Address(firstLine: "baz first name"))

switch baz?.address?.firstLine{
case let .some(firstLine) where
    firstLine.starts(with: "baz"):
    "Baz first address line = \(firstLine)"
    
case let .some(firstLine):
    "baz first name adress doesn't match the previous case"
    firstLine
case .none:
    "baz first name is nil"
}


func getfullname(
    firstname: String,
    lastname: String?
)-> String?{
    if let lastname{
        return "\(firstname) \(lastname)"
    }
    else{
        return nil
    }
}
getfullname(firstname: "celina", lastname: nil)
getfullname(firstname: "nasreen", lastname: "banu")


func getfullname2(
    firstname: String,
    lastname: String?
)-> String?{
    guard let lastname else{
        return nil
    }
    return "\(firstname) \(lastname)"

    }

getfullname2(firstname: "celina", lastname: "albert")
getfullname2(firstname: "nasreen", lastname: nil)
