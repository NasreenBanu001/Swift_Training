import Foundation

var greeting = "Hello, playground"
//if-else (Conditional statement):
 
let myname = "Nasreen"
let myage = 22
let yourname = "celina"
let yourage = 25

if myage > yourage{
    "\(myname) is older than \(yourname)"
}
else if yourage > myage {
    "\(yourname) is older than \(myname)"

}
else{
    "\(yourname) and \(myname) are of same age"
}

//logical operatorsL:

if myage == 20 || myname == "celina"{
    "Guess she is a girl"
}
else if myage == 22 && myname == "Nasreen"{
    "I am this"
}
else{
    "Don't know what to say"
}
