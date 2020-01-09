import UIKit

var str = "Hello, playground"

//Notes from TwoStraws ProSwift

let twostraws = (name: "twostraws", password: "fr0st1es")
let bilbo = (name: "bilbo", password: "bagg1n5")
let taylor = (name: "taylor", password: "fr0st1es")
let users = [twostraws, bilbo, taylor]

for user in users {
    print(user.name)
}

// switching on loops
for case ("twostraws", "fr0st1es") in users {
    print("User twostraws has the password fr0st1es")
}
for case (let name, let password) in users {
    print("User \(name) has the password \(password)")
}
for case let (name, password) in users {
    print("User \(name) has the password \(password)")
}
for case let (name, "fr0st1es") in users {
    print("User \(name) has the password \"fr0st1es\"")
}

//Optionals
let optionalData: [Any?] = ["Bill", nil, 69, "Ted"]
for case let .some(datum) in optionalData {
    print(datum)
}
for case let datum? in optionalData {
    print(datum)
}

//Ranging

let age = 36
switch age {
case 0 ..< 18:
    print("You have the energy and time, but not the money")
case 18 ..< 70:
    print("You have the energy and money, but not the time")
default:
    print("You have the time and money, but not the energy")
}


if case 0 ..< 18 = age {
    print("You have the energy and time, but not the money")
} else if case 18 ..< 70 = age {
    print("You have the energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

if 0 ..< 18 ~= age {
    print("You have the energy and time, but not the money")
} else if 18 ..< 70 ~= age {
    print("You have the energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
    
}

if (0 ..< 18).contains(age) {
    print("You have the energy and time, but not the money")
} else if (18 ..< 70).contains(age) {
    print("You have the energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

let user = (name: "twostraws", password: "fr0st1es", age: 36)
switch user {
case let (name, _, 0 ..< 18):
    print("\(name) has the energy and time, but no money")
case let (name, _, 18 ..< 70):
    print("\(name) has the money and energy, but no time")
case let (name, _, _):
    print("\(name) has the time and money, but no energy")
}


let view = UIView()
for label in view.subviews where label is UILabel {
    print("Found a label with frame \(label.frame)")
}

let numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
//Print Odd Numbers
for number in numbers where number % 2 == 1 {
    print(number)
}

//Lazy example
//Note: all Swift static let singletons are automatically lazy

class Singer {
    let name: String
    init(name: String) {
        self.name = name
    }
    lazy var reversedName = {
        return "\(self.name.uppercased()) backwards is \(String(self.name.uppercased().reversed()))!"
    }()
}

let lazyTaylor = Singer(name: "Taylor Swift")
print(lazyTaylor.reversedName)

// Lazy method
//class Singer {
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//    lazy var reversedName = self.getReversedName()
//
//    private func getReversedName() -> String {
//        return "\(name.uppercased()) backwards is \
//        (String(name.uppercased().reversed()))!"
//    }
//}
//let taylor = Singer(name: "Taylor Swift")
//print(taylor.reversedName)

//Lazy Sequence problem

func fibonacci(of num: Int) -> Int {
    if num < 2 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}
let fibonacciSequence = (0...20).map(fibonacci)
print(fibonacciSequence[10])

//No memoization
let lazyFibonacciSequence = Array(0...199).lazy.map(fibonacci)
print(lazyFibonacciSequence[19])



// Deconstructing

let data = ("one", "two", "three")

let one = data.0
let two = data.1
let three = data.2

//Or...
//let (one, two, three) = data
var a = 10
var b = 20

//Swapping tuples
(b, a) = (a, b)
print("a: \(a), b: \(b)")

//Labeled Statements
var board = [[String]](repeating: [String](repeating: "",
                                           count: 10), count: 5)
board[3][5] = "x"
for (rowIndex, cols) in board.enumerated() {
    for (colIndex, col) in cols.enumerated() {
        if col == "x" {
            print("Found the treasure at row \(rowIndex) col \(colIndex)!")
        }
    }
}
