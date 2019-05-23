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
