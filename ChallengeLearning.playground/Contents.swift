import UIKit

// An example of a hash that has collisions using unicode scalars represntations of the key.  1-way.
func naiveHash(_  string: String)  -> Int {
    let unicodeScalars = string.unicodeScalars.map { Int ($0.value)}
    return unicodeScalars.reduce(0, +)
}

print(naiveHash("potato"))
print(naiveHash("abc"))
print(naiveHash("bca"))


//Generic Node type
//class Node<T> {
//    var data: <T>?
//    var next: Int
//
//    init(data: <T>, next: Int) {
//        self.data = data
//        self.next = next
//    }
//}


struct MinHeap {
    fileprivate var items: [Int] = []   // Get index functions
    private func getLeftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    private func getRightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
    private func getParentIndex(_ childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }
    
    // Boolean Check Functions
   // private func hasLeftChild(_ )
    
    
}

/*
 Challenge
 Input: 2 Strings startingString and goalString
 Output: returns Int of minimum number of 3 defined operations(insert, remove, replace) on startingString to make it goalString
  */


//Minimum
func optimalStringModification(startingString: String, goalString: String) -> Int {
    var operationCounter: Int = 0
    var sharedLetterCount: Int = 0
    var prefix: String = "" //Postfix is more efficient?
    if startingString == goalString {
        return operationCounter
    }
    let lengthDifference = startingString.count - goalString.count
    if lengthDifference == 0 {
        operationCounter += 1 
        sharedLetterCount = Set(startingString).intersection(Set(goalString)).count

        for i in 0..<goalString.count {
            let start = startingString[startingString.index(startingString.startIndex, offsetBy: i)]
            let goal = goalString[goalString.index(goalString.startIndex, offsetBy: i)]
            if start == goal {
                print (startingString[startingString.index(startingString.startIndex, offsetBy: i)])
            } else {
                operationCounter += 1
            }
        }
        
    }
    return operationCounter
 }


print(optimalStringModification(startingString: "cat", goalString: "cot"))
print(optimalStringModification(startingString: "cat", goalString: "cot"))
print(optimalStringModification(startingString: "cat", goalString: "cot"))
print(optimalStringModification(startingString: "cat", goalString: "cot"))

//func insertRemove() {
//
//}
//func insertRemoveOrReplace() {
//
//}
