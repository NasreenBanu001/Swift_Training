import Foundation
//internal arg names:
func add( lhs:Int , rhs:Int)-> Int{
    lhs+rhs
}
add(lhs:20,rhs:30)

//external arg names:
func add1(_ lhs:Int,_ rhs:Int)-> Int{
    lhs+rhs
}
add1(20,40)

//closure:
let mul: (Int, Int)->Int = {
    (lhs:Int,rhs:Int)-> Int in
    lhs*rhs
}
mul(30,20)
//(1) fun definition
func mul1(_ val1:Int, _ val2:Int,
         using function: (Int,Int)->Int)->Int{
    function(val1,val2)
}
//(2) fun call
mul1(2,3, using:{
    (val1:Int,val2:Int)->Int in
    val1*val2})

//(3)
mul1(10,30)
{ (val1:Int,val2:Int)-> Int in
    val1*val2
    
}

//(4)
mul1(10,30)
{ (val1,val2) in
    val1*val2
    
}
//(5)
mul1(
    20,
    70)
{
    $0*$1
    
}

let age = [10,36,24,22,35,47,20]
age.sorted (by: {(lhs: Int, rhs:Int)-> Bool in
    lhs < rhs
})
//descending and ascending
age.sorted(by: >)
age.sorted(by: <)

//add with 2 functions

func add10to(_ value:Int)-> Int{
    value + 10
}
func add20to(_ value:Int)-> Int{
    value + 20
}

func doAddition( on value:Int,
                 using function: (Int) ->Int
)->Int{
    function(value)
}
//fun call

doAddition(on: 20 , using: add10to(_:))
doAddition(on: 30, using: add20to(_:))
