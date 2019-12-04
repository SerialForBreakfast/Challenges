//
//  AdventOfCode2019.swift
//  Challenges
//
//  Created by Joseph McCraw on 12/4/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

struct AdventOfCode2019 {
    public func Day1() -> Int? {
        var result: Int?
        if let filepath = Bundle.main.path(forResource: "AoC2019_Day_01_Input", ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filepath)
                let modules = contents.split(separator: "\n").map { String($0) }
                
                result = 0
                for module in modules {
                    if let mass = Int(module) {
                        result! += Int(mass / 3) - 2
                        print(result)
                    }
                return result!
                }
            } catch  {
                print("Couldn't open \(filepath)")
            }
        }
        return nil
    }
}
