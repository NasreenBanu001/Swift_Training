import Foundation

func perform (
    _ op: (Int, Int) -> Int,
    lhs : Int,
    rhs : Int
) -> Int{
    op(lhs,rhs)
}

perform(+, lhs:10, rhs: 20)
perform(-, lhs:10, rhs: 20)
perform(*, lhs:10, rhs: 20)

//perform(-, on: 10, and: 20)
//perform(*, on: 10, and: 20)
//perform(/, on: 20, and: 10)

//generic : using numberic datatype so that we can use the same function for any type of data type.

func Perform <N: Numeric>(
    _ op: (N, N)-> N,
    lhs: N,
    rhs: N
) -> N{
    op(lhs,rhs)
}
Perform(+, lhs:10, rhs: 20)
Perform(-, lhs:10.5, rhs: 20)
Perform(*, lhs: 10.0, rhs: 20.0)

//alternative way for creating generics with where keyword:

func Perform2 <N>(
    _ op: (N, N)-> N,
    lhs: N,
    rhs: N
) -> N where N: Numeric{
    op(lhs,rhs)
}
Perform2(+, lhs:10, rhs: 20)
Perform2(-, lhs:10.5, rhs: 20)
Perform2(*, lhs: 10.0, rhs: 20.0)

//combining multiple protocol using generics as a type
protocol CanJump {
    func jump()
}

protocol CanRun{
    func run()
}

struct person: CanJump , CanRun{
    func jump() {
        "jumping..."
    }
    
    func run() {
        "running..."
    }
}
func JumpandRun <T: CanRun & CanJump>(value: T){
    value.jump()
    value.run()
}

let Person = person()
JumpandRun(value: Person)


//Array of string in generics:

extension [String]{
    func longestString()-> String? {
        self.sorted {(LHS: String, RHS: String)-> Bool in
            LHS.count > RHS.count
        }.first
    }
}
["celina",
 "umar",
 "nasreen"].longestString()


//
protocol View{
    func addSubView(_ view: View)
}

extension View{
    func addSubView(_ view: View){
//        empty
    }
}


struct Button: View{
//    Empty
}
struct Table: View{
    //empty
}

protocol PresentableAsView{
    associatedtype ViewType: View
    func produceView()-> ViewType
    func configure(
        superView: View,
        thisView: ViewType
    )
    func present(
        view: ViewType,
        on superView: View
    )
}

extension PresentableAsView{
    func configure(
        superView: View,
        thisView: ViewType
    ){
//        empty by default
    }
    func present(
        view: ViewType,
        on superView: View
    ){
        superView.addSubView(view)
    }
}

struct MyButton : PresentableAsView{
    func produceView()-> Button{
        Button()
    }
    func configure(superView: View, thisView: Button) {
        
    }
    func present(view: Button, on superView: Button) {
        
    }
}

struct MyTable : PresentableAsView{
    func produceView()-> Table{
        Table()
    }
    func configure(superView: View, thisView: Table) {
        
    }
    func present(view: Table, on superView: Table) {
        
    }
}

extension PresentableAsView{
    func dosomethingWithButton(){
        "This is a button"
    }
    
}

let button = MyButton()
button.dosomethingWithButton()

let table = MyTable()
table.dosomethingWithButton()

//

extension [Int]{
    func average()-> Double{
       Double(self.reduce(0, +)) / Double(self.count)
    }
}
[1,2,3,4,5].average()
[20,40,60,80,100].average()
