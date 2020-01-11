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

//This:
if userRequestedPrint() {
    if documentSaved() {
        if userAuthenticated() {
            if connectToNetwork() {
                if uploadDocument("resignation.doc") {
                    if printDocument() {
                        print("Printed successfully!")
                    }
                }
            }
        }
    }
}
//Turns to This
printing: if userRequestedPrint() {
    if !documentSaved() { break printing }
    if !userAuthenticated() { break printing }
    if !connectToNetwork() { break printing }
    if !uploadDocument("work.doc") { break printing }
    if !printDocument() { break printing }
    print("Printed successfully!")
}

// Nesting functions
import Foundation
struct Point {
    let x: Double
    let y: Double
}

enum DistanceTechnique {
    case euclidean
    case euclideanSquared
    case manhattan
}
func calculateDistance(start: Point, end: Point, technique:
    DistanceTechnique) -> Double {
    func calculateEuclideanDistanceSquared(start: Point, end:
        Point) -> Double {
        let deltaX = start.x - end.x
        let deltaY = start.y - end.y
        return deltaX * deltaX + deltaY * deltaY
    }
    func calculateEuclideanDistance(start: Point, end: Point) ->
        Double {
            return sqrt(calculateEuclideanDistanceSquared(start:
                start, end: end))
    }
    func calculateManhattanDistance(start: Point, end: Point) ->
        Double {
            return abs(start.x - end.x) + abs(start.y - end.y)
    }
    switch technique {
    case .euclidean:
        return calculateEuclideanDistance(start: start, end: end)
    case .euclideanSquared:
        return calculateEuclideanDistanceSquared(start: start, end: end)
    case .manhattan:
        return calculateManhattanDistance(start: start, end: end)
    }
}
let distance = calculateDistance(start: Point(x: 10, y: 10),
                                 end: Point(x: 100, y: 100), technique: .euclidean)

//Use Capturing instead
func calculateDistance(start: Point, end: Point, technique:
    DistanceTechnique) -> Double {
    func calculateEuclideanDistanceSquared() -> Double {
        let deltaX = start.x - end.x
        let deltaY = start.y - end.y
        return deltaX * deltaX + deltaY * deltaY
    }
    func calculateEuclideanDistance() -> Double {
        return sqrt(calculateEuclideanDistanceSquared())
    }
    func calculateManhattanDistance() -> Double {
        return abs(start.x - end.x) + abs(start.y - end.y)
    }
    switch technique {
    case .euclidean:
        return calculateEuclideanDistance()
    case .euclideanSquared:
        return calculateEuclideanDistanceSquared()
    case .manhattan:
        return calculateManhattanDistance()
    }
}


//Repeating     Swift’s dictionaries increase their capacity in powers of 2, so when you request a nonpower-of-2 number like 100 you will actually get back a dictionary with a minimum capacity of 128. R
var dictionary = Dictionary<String, String>(minimumCapacity:
    100)
let heading = "This is a heading"
let underline = String(repeating: "=", count: heading.count)
//You can do the same for arrays like this:
let equalsArray = [String](repeating: "=", count:
    heading.count)

var board = [[String]](repeating: [String](repeating: "",
                                           count: 10), count: 10)

/*Raw values
 by adding : Int Swift has given each color a matching integer, starting from 0 and
 counting upwards. That is, Unknown is equal to 0, Blue is equal to 1, and so on. Sometimes
 the default values aren’t useful to you, so you can specify individual integers for every raw
 value if you want. Alternatively, you can specify a different starting point to have Xcode count
 upwards from there
 */
enum Color: Int {
    case unknown, blue, green, pink, purple, red
}


//Sorting
/* methods sorted() and sort() – the former returns a sorted array, whereas the latter
modifies the array you call it on */

//Array VS ContiguousArray
let array2 = Array<Int>(1...1000000)
let array3 = ContiguousArray<Int>(1...1000000)
var start = CFAbsoluteTimeGetCurrent()
array2.reduce(0, +)
var end = CFAbsoluteTimeGetCurrent() - start
print("Took \(end) seconds")
start = CFAbsoluteTimeGetCurrent()
array3.reduce(0, +)

print("Took \(end) seconds")


var favoriteTVShows = ["Red Dwarf", "Blackadder", "Fawlty Towers", "Red Dwarf"]
var favoriteCounts = [String: Int]()
for show in favoriteTVShows { favoriteCounts[show, default: 0] += 1
}

/* Sets
 NSCountedSet a set with a twist: items can still appear only once, but if you try to add them more than once it will keep track of the count as if they were actually there.
 */

//Tuple types

 let father = (first: "Scott", last: "Swift")
let mother = (first: "Andrea", last: "Finlay")
func marryTaylorsParents(man: (first: String, last: String), woman: (first: String, last: String)) -> (husband: (first: String, last: String), wife: (first: String, last: String)) {
return (man, (woman.first, man.last)) }


//generics

func inspect<T>(_ value: T) {
print("Received \(type(of: value)) with the value \(value)")
}

func inspectAny(_ value1: Any, _ value2: Any) {
print("1. Received \(type(of: value1)) with the value \(value1)")
print("2. Received \(type(of: value2)) with the value \(value2)")
}
/* Next time you get a crash, follow these instructions to get right to the problem: click on the objc_exception_throw in your thread, then type "po $arg1" into the debug area to get the human-readable version of the error. If you use exception breakpoints, you can even add the "po $arg1" command there so it’s automatic.
*/
//Variadic function; print(1,2,3,4,5)
func add(numbers: Int...) -> Int { var total = 0
for number in numbers { total += number
}
   return total
}
add(numbers: 1, 2, 3, 4, 5)

//Closure simplifications

 let names = ["Michael Jackson", "Taylor Swift", "Michael Caine", "Adele Adkins", "Michael Jordan"]

let result1 = names.filter({ (name: String) -> Bool in
    if name.hasPrefix("Michael") {
      return true
   } else {
      return false
   }
})
print(result1.count)

let result2 = names.filter({ name in
    if name.hasPrefix("Michael") {
      return true
   } else {
      return false
   }
})

let result3 = names.filter({ name in
    return name.hasPrefix("Michael")
})

let result4 = names.filter { name in return name.hasPrefix("Michael")
}

let result5 = names.filter { name in name.hasPrefix("Michael") }

//let result6 = names.filter { name in name.hasPrefix("Michael") }
let result7 = names.filter { $0.hasPrefix("Michael") }
//let result8 = names.filter { $0.hasPrefix("Michael") }

//Functions as Closures
import Foundation
let words = ["1989", "Fearless", "Red"]
let input = "My favorite album is Fearless"
words.contains(where: input.contains)

//~= is the pattern match operator, and it lets you write code like this:
let range = 1...100
let i = 42
if range ~= i { print("Match!")
}
