import Foundation
var greeting = "Hello, playground"

let myName = "Nasreen"
let yourName = "celina"
var names = [
myName,yourName]
names = ["bhvanesh"]
names.append("Fariz")
names.append("lokesh")
let foo = "Foo"
var foo2 = foo
foo2 = "boo"
foo
foo2
let moreNames = ["foo", "bar", 87] as [Any]
var copyname = moreNames
copyname.append("lina")
copyname.append("Richard ")
let oldArray = NSMutableArray(
array: ["celina", "helen"]
)
oldArray.add("anto")
func changeTheArray(_ array: NSArray){
  let copy = array as! NSMutableArray
  copy.add("Jazz")
}
changeTheArray(oldArray)
oldArray
