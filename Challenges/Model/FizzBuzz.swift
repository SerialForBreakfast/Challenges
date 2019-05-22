//
//  File.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/22/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

public class FizzBuzz: NSObject {
    
    public func compute(numbers: [Int]) {
        for number in numbers {
            if number % 3 == 0 && number % 5 == 0 {
                print("fizzbuzz")
            } else if number % 3 == 0{
                print("fizz")
            } else if number % 5 == 0{
                print("buzz")
            } else {
                print(number)
            }
        }
    }
}
