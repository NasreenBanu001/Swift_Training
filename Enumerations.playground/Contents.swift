import Foundation

var greeting = "Hello, playground"

enum Animals{
    case cat
    case rabbit
    case dog
    case hedgehog
}

let cat = Animals.cat

if cat == Animals.cat{
    "this is a cat"
}
else if cat == Animals.dog{
    "this is a dog"
}
else  {
    "this is something else"
}

//within function

func describeanimal(_ animal: Animals){
    switch animal {
    case .cat:
        "this is a cat"
        break
    case .dog:
        "this is a dog"
        break
    case .rabbit:
        "this is a rabbit"
        break
//avoid using defaultad use all instance of the enum:
    case .hedgehog:
        "this is a hedgehog"
        break
    }
}
describeanimal(Animals.rabbit)


enum shortcut {
    case fileorfolder(path: URL, name: String)
    case wwwurl(path: URL)
    case song( artist: String, songname: String)
}
let wwwApple = shortcut.wwwurl(
    path: URL(string: "https://apple.com")!
)
switch wwwApple{

case .fileorfolder(path: let path, name: let name):
    path
    name
    break
case .wwwurl(path: let path):
    path
    break
case .song(artist: let artist, songname: let songname):
    artist
    songname
    break
}

//shortened code


switch wwwApple{

case .fileorfolder(let path, let name):
    path
    name
    break
case .wwwurl(let path):
    path
    break
case .song( let artist, let songname):
    artist
    songname
    break
}

//shortned without let...by adding let only after the cases

switch wwwApple{
case let.fileorfolder(path, name):
    path
    name
    break
case let.wwwurl(path):
    path
    break
case let.song(artist, songname):
    artist
    songname
    break
}


//
enum vehicle{
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, model: String)
    
    func getmanufacturer()->String{
        switch self{
        case let .car(manufacturer, _),
            let .bike(manufacturer, _):
            return manufacturer
        }
        
    }
}
var car = vehicle.car(manufacturer: "BMW", model: "XX")
var bike = vehicle.bike(manufacturer: "HD", model: "CD")

car.getmanufacturer()
bike.getmanufacturer()


//swift with raw values:

enum familymembers: String {
    case father = "dad"
    case mother = "mom"
    case brother = "bro"
    case sister = "sis"
}
familymembers.father.rawValue
familymembers.mother.rawValue
familymembers.brother.rawValue
familymembers.sister.rawValue

enum favoriteEmoji: String, CaseIterable{
    case rocket =  "🚀"
    case blush = "☺️"
    case fire = "🔥"
}
favoriteEmoji.allCases
favoriteEmoji.allCases.map(\.rawValue)
favoriteEmoji.fire.rawValue

if let blush = favoriteEmoji(rawValue: "☺️"){
    "I found the emoji blush"
    blush
}
else{
    "I cant find the emoji blush"
}
if let snow = favoriteEmoji(rawValue: "❄️"){
    "I found the emoji snow...is it really X a snow"
    snow}
else{
    "As excepted snow doesnt exist in enum"
}

//implicity asssign rawvalues:
enum planets: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
planets.earth.rawValue
planets.jupiter.rawValue

//

enum Height{
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}
var myheight = Height.medium
myheight.makeLong()
myheight
 
