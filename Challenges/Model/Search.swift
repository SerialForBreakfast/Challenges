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
    func LinearSearch(searchValue: Int, array: [Int]) -> Bool {
        for num in array {
            if num == searchValue {
                return true
            }
        }
        return false
    }
    
    func LinearSearchMap(searchValue: Int, array: [Int]) -> [Bool] {
        return array.map({ $0 == searchValue })
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
}
