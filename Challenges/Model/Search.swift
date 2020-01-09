//
//  Search.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

struct Search {
    // 0(n)
    // Linear search returns a bool
    func LinearSearch(searchValue: Int, array: [Int]) -> Bool {
        for num in array {
            if num == searchValue {
                return true
            }
        }
        return false
    }
    
    func LinearSearchContains(searchValue: Int, array: [Int]) -> Bool {
        return array.contains(searchValue)
    }
    
    // Split and Compare....
    func BinarySearch(searchValue: Int, array: [Int]) -> Bool {
        var leftIndex: Int = 0
        var rightIndex: Int = array.count - 1
        while leftIndex <= rightIndex {
            let middleIndex = (leftIndex + rightIndex) / 2
            let middleValue = array[middleIndex]
            if middleValue == searchValue {
                return true
            }
            if searchValue < middleValue {
                rightIndex = middleIndex - 1
            }
            if searchValue > middleValue {
                leftIndex = middleIndex + 1
            }
        }
        return false
    }
    
    //O(log n)
    public func BinarySearch<T: Comparable>(array: [T], obj: T) -> Bool {
        var lowerBound = 0
        var upperBound = array.count
        while lowerBound < upperBound {
            let midIndex = lowerBound + (upperBound - lowerBound) / 2
            let current = array[midIndex]
            if current < obj {
                upperBound = midIndex
            } else if current > obj {
                lowerBound = midIndex + 1
            } else {
                return true
            }
        }
        
        return false
        
    }
    
    //linear search for any equatable type using enumerated.
    
    func linearSearchEquatable<T: Equatable>(_ array:[T], _ obj:T) -> Int? {
        for (index, item) in array.enumerated() where item == obj {
            return index
        }
        return nil
    }
    
}



public func linearSearchRecursive<T: Equatable>(array: inout [T], obj: T) -> Bool {
    if array.count == 0 { return false }
    if array.popLast() == obj {
        return true
    } else {
        linearSearchRecursive(array: &array, obj: obj)
    }
    return false
}
