import Foundation

extension Int{
    func plustwo() ->Int{
        self + 2
    }
}
let two = 2
two.plustwo()

//exftension can also add initializer to the existing type:

struct Person{
    let firstname: String
    let lastname: String
}

extension Person{
    init(fullname:String){
        let component = fullname.components(separatedBy: " ")
        self.init(firstname: component.first ?? fullname, lastname: component.last ?? fullname)
    }
}
let person = Person(fullname: "celina albert")
person.firstname
person.lastname

//
protocol goesdVroom{
    var vroomValue: String {get}
    func goVroom()-> String
}
extension goesdVroom{
    func goVroom()-> String{
        "\(vroomValue) goes vroom"
    }
}

struct car{
    let manufacturer: String
    let model: String
}

let modelX = car(manufacturer: "Tesla", model: "XX")

extension car : goesdVroom{
    var vroomValue: String {
        "\(self.manufacturer) model \(self.model)"
    }
}

modelX.goVroom()


class myDouble{
    var value:Double
    init(value:Double){
        self.value = value
    }
}

extension myDouble{
    convenience init(){
        self.init(value: 0)
    }
}
let mydouble = myDouble()
mydouble.value
