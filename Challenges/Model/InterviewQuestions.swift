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

//struct TwoSum( _ a:[Int], _ res:Int) -> [Int] {
//    var results: [Int] = []
//    for i in a {
//        let j = a[(1 + i)]
//        if a[i] + a[j] == res {
//            return [a[i],a[j]]
//        }
//    }
//    return [1,2]
//}

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
        func pivot() {
            
        }
        func partition() {
            
        }
        func select() {
            
        }
        let length = a.count
        if k == length {
            return a[0]
        } else if k <= 0 || k > length {
            print("length \(length) k \(k)")
            return nil
        }
        
        let r = Int(arc4random_uniform(UInt32(length)))
        let pivot = a[r]
        var smaller:[Int] = []
        var larger:[Int] = []
        for i in 0...(length - 1) {
            print("pivot is \(pivot) k: \(k) at index: \(i) current: \(a[i]) smaller: \(smaller) larger: \(larger)" )
            if a[i] < pivot {
                smaller.append(a[i])
            } else if a[i] > pivot {
                larger.append(a[i])
            }
        }
        if k == (larger.count + 1) {
            return pivot
        }
        if k < larger.count {
            return quickSelectImplementation(larger, k)
        } else if k > larger.count {
            return quickSelectImplementation(smaller, k - (length - larger.count))
        } //else if k == (larger.count + 1) {
        return pivot
        
    }
    
    //Given an array of size n use Dictionary to look up compliment n log n?
    public func TwoSumDictionary(nums: [Int], target: Int) -> [Int]? {
        var dict = [Int: Int]()
        var index = 0
        var complimentIndex: Int?
        for num in nums {
            dict[index] = num
            let compliment = target - num
            if let complimentIndex = dict[compliment] {
                return [index, complimentIndex]
            }
            index += 1
        }
        return nil
    }
    //  Search of a array using contains  n log n
    public func TwoSum(nums: [Int], sum: Int) -> Bool {
        for i in 0..<nums.count {
            let compliment = sum - nums[i]
            var tempArray = nums
            tempArray.remove(at: i)
            let hasCompliement = tempArray.contains(compliment)
            if hasCompliement {
                return true
            }
        }
        return false
    }
    
    //Pointer solution works on sorted arrays 0(n)
    public func TwoSumPointerSolution(nums: [Int], sum: Int) -> Bool {
        var lowIndex = 0
        var highIndex = nums.count - 1
        while lowIndex < highIndex {
            let sumOfLowAndHigh = nums[lowIndex] + nums[highIndex]
            if sum == sumOfLowAndHigh {
                return true
            } else if sumOfLowAndHigh < sum {
                lowIndex += 1
            } else if sumOfLowAndHigh > sum {
                highIndex -= 1
            }
        }
        return false
    }
    //Given 2 strings return the least possible operations to transmute using insert, remove, replace.  Is the minimum edit distance problem
    //    public func recursiveOperationCount(s1: inout String, s2: inout String, operations: inout Int?) -> Int {
    //        if operations == nil {
    //            operations = 0
    //        }
    //        if s1 == s2 {
    //            return operations!
    //        }
    //        if s1.last == s2.last {
    //            print(s1.popLast())
    //            print(s2.popLast())
    //            recursiveOperationCount(s1: &s1, s2: &s2, operations: &operations)
    //        }
    //        return operations!
    //    }
}

