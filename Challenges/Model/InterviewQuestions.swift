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
    public func quickSelectImplementation(_ a:[Int], _ k:Int) -> Int? {
        let length = a.count
        let r = Int(arc4random_uniform(UInt32(length)))
        let pivot = a[r]
        var smaller:[Int] = []
        var larger:[Int] = []
        for i in 0...(length - 1) {
            print(i)
            if a[i] < pivot {
                smaller.append(a[i])
            } else if a[i] > pivot {
                larger.append(a[i])
            }
        }
        if k <= smaller.count {
            return quickSelectImplementation(smaller, k)
        } else if k <= larger.count {
            return quickSelectImplementation(larger, k)
        } else {
            return pivot
        }
    }
}
