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

struct Kth_Largest_Element {
    public func simpleImplementation(_ a:[Int], _ k:Int) -> Int? {
        let length = a.count
        if k >= 0 && length > k {
            let sorted = a.sorted()
            return sorted[length - k]
        }else {
            return nil
        }
    }
}
