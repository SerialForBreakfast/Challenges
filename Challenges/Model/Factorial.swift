//
//  Factorial.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

struct Factorial {
    func iteratedComputation(value: UInt) -> UInt {
        var product: UInt = 1
        var count = value
        while(count > 0) {
            product *= count
            count -= 1
        }
        return product
    }
    
    //recursive version
    func recursiveComputation(value: UInt) -> UInt {
        if value <= 1 { return 1}
        //print(value)
        return value * recursiveComputation(value: value - 1)
    }
}
