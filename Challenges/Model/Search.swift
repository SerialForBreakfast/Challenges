//
//  Search.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

class Search: NSObject {
    // 0(n)
    func LinearSearch(searchValue: Int, array: [Int]) -> Bool {
        for num in array {
            if num == searchValue {
                return true
            }
        }
        return false
    }
    
    //
    func BinarySearch(searchValue: Int, array: [Int]) -> Bool {
        for num in array {
            if num == searchValue {
                return true
            }
        }
        return false
    }
}
