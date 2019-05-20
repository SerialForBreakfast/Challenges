//
//  ChallengesModel.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/19/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//  Challenges from the HWS Coding Challenges udemy class

import Foundation

public class Challenges: NSObject {
    //  Are the Letters unique?
    public func challenge1(input: String) -> Bool {
        return Set(input).count == input.count
    }
    
    //  Is a string a palendrome?
    func challenge2(input: String) -> Bool {
        let lowerCasedInput = input.lowercased()
        var isPalendrome: Bool = false
        let revesedArray = Array(lowerCasedInput.reversed())
        if revesedArray == Array(lowerCasedInput) {
            isPalendrome = true
        }
        return isPalendrome
    }
    
    // Do two strings have the same characters?
    func challenge3(string1: String, string2: String) -> Bool {
        if Set(string1) == Set(string2) {
            return true
        }
        return false
    }
    
    //  Does one string contain another?
    func challenge4(string1: String, string2: String) -> Bool {
        return string1.lowercased().range(of: string2.lowercased()) != nil
    }
    //  How many times does a Character appear in a String
    func challenge5(input: String, count: Character) -> Int {
        var letterCount = 0
        for letter in input {
            if letter == count {
                letterCount += 1
            }
        }
        return letterCount
    }
    // alternate
    func challenge5b(input: String, count: Character) -> Int {
        return input.reduce(0) { $1 == count ? $0 + 1  : $0}
    }
    // Removal alternative
    func challenge5c(input: String, count: Character) -> Int {
        let characterRemoved = input.replacingOccurrences(of: String(count), with: "")
        return input.count - characterRemoved.count
    }
    
    func challenge8(input: String, rotated: String) -> Bool {
        guard input.count == rotated.count
            else { return false }
        let combined = input + input
        //let inputArray = Array(input)
        return combined.contains(rotated)
    }
    
    func challenge9 (input: String) -> Bool {
        let set = Set(input.lowercased())
        let letters = set.filter { $0 >= "a" && $0 <= "z" }
        return letters.count == 26
    }
}



//extension String {
//    subscript(i: Int) -> String {
//        return String(self[index(startIndex, offsetBy: i)])
//    }
//}
