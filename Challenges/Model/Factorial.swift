//
//  Factorial.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

class Factorial: NSObject {
    
    //iterated version
    func iteratedComputation(value: UInt) -> UInt {
        if value == 0 {
            return 1
        }
        var product: UInt = 1
        for i in 1...value {
            product = product + i
        }
        return product
    }
    
    //recursive version
    func recursiveComputation(value: UInt) -> UInt {
        if value == 0 {
            return 1
        }
        //print(value)
        return value * recursiveComputation(value: value - 1)
    }
}
