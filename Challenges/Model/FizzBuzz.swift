//
//  File.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

struct FizzBuzz {
    public func compute(numbers: [Int]) {
        for number in numbers {
           print(isIntAFizzOrBuzz(num: number))
        }
    }
    func isIntAFizzOrBuzz(num: Int) -> String {
        if num % 3 == 0 && num % 5 == 0 {
                       return ("fizzbuzz")
                   } else if num % 3 == 0{
                       return ("fizz")
                   } else if num % 5 == 0{
                       return ("buzz")
                   } else {
                       return (String(num))
                   }
    }
}
