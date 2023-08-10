import UIKit

var greeting = "Hello, playground"

//no arg and no return type function:

func noargnoreturnvalue(){
    print("this is with no argument and no return type")
}
noargnoreturnvalue()

//no return type but with argument:
func addvalue(value1: Int , value2: Int){
    print("addition of \(value1) and \(value2) is \(value1 + value2)")
}
addvalue(value1: 20, value2: 30)


//with aqrg and with return type:

func subvalue(value1: Int, value2: Int)-> String{
    //    in swift when have only return statement inside function , we need not use return keyword for returning a value...it can understand implicitly
    "subraction of \(value1) and \(value2) is \(value1 - value2)"
}
subvalue(value1: 50, value2: 20)

//no arg but return type:

func mulvalue()-> String{
    let val1 = 20
    let val2 = 30
//If there are 2 or more statemdent before return...it is a must to use return keyword
    return "multiplication of \(val1) and \(val2) is \(val1 * val2)"
}
mulvalue()

//with external name:

func addingfun(_ val1:Int, _ val2:Int)-> String{
    "addition of the numbers is \(val1+val2)"
}
addingfun(20, 30)

func getFullName(firstname: String = "foo", lastname: String = "boo")->String{
    "\(firstname) \(lastname)"
}
getFullName()
getFullName(firstname: "haha")
getFullName(lastname: "sarah")
getFullName(firstname: "richard", lastname: "alens")
getFullName()

