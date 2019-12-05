//
//  AdventOfCode2019.swift
//  Challenges
//
//  Created by Joseph McCraw on 12/4/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import Foundation

struct AdventOfCode2019 {
    public func Day1() -> Int? { // 8427008 not it
        var result: Int?
        if let filepath = Bundle.main.path(forResource: "AoC2019_Day_01_Input", ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filepath)
                let modules = contents.split(separator: "\n").map { Int($0) }
                let masses = contents.split(separator: "\n").map { Int($0)! }
                result = Int(masses.reduce(0) { $0 + calculateFuel(mass: Float($1))})
                //                print(result)
            } catch  {
                print("Couldn't open \(filepath)")
            }
        }
        return result
    }
    func requiredFuel(_ mass: Int) -> Int {
        mass / 3 - 2
    }
    private func additionalFuelCosts(_ mass: Int) -> Int {
        let fuel = requiredFuel(mass)
        return fuel >= 0 ? fuel + additionalFuelCosts(fuel) : 0
    }
    private func calculateFuel(mass: Float) -> Float {
        var fuel = floor(mass / 3) - 2
        if fuel > 0 {
            let newFuel = calculateFuel(mass: fuel)
            if newFuel > 0 {
                fuel += newFuel
            }
        }
        return fuel
    }
    
    struct Opcode {
        let operation: Int
        let firstInput: Int
        let secondInput: Int
        let outputIndex: Int
    }
    fileprivate func performOperations(_ intCode: inout [Optional<Int>], _ currentIndex: Int) {
        let instructionSet = Opcode(operation: intCode[currentIndex]!, firstInput: intCode[currentIndex + 1]!, secondInput: intCode[currentIndex + 2]!, outputIndex: intCode[currentIndex + 3]!)
        if instructionSet.operation == 1 {
            let additionResult = intCode[instructionSet.firstInput]! + intCode[instructionSet.secondInput]!
            intCode[instructionSet.outputIndex] = additionResult
        } else if instructionSet.operation == 1 {
            let additionResult = intCode[instructionSet.firstInput]! + intCode[instructionSet.secondInput]!
            intCode[instructionSet.outputIndex] = additionResult
        } else if instructionSet.operation == 99 {
            print("Program Completed")
        } else {
            fatalError("not 1,2, or 99")
        }
    }
    
    public func Day2() {
        let result: Int?
        let currentIndex = 0
        //        let opcode: (Int, Int, Int, Int)
        if let filepath = Bundle.main.path(forResource: "AoC2019_day2", ofType: "txt") {
            do {
                var intCode = try String(contentsOfFile: filepath).split(separator: ",").map { Int($0) }
                performOperations(&intCode, currentIndex)
                
            } catch {
                print("error")
            }
        }
    }
    
    
}
