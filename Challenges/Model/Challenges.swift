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
//        let string1char = Array(string1)
//        print(string1char)
//        let string2char = Array(string2)
//
        return string1.lowercased().range(of: string2.lowercased()) != nil
//        for i in string1char {
//            if string1char[i] = string2char[0] {
//                for j in string2char {
//                    if string1char[i]  == string2char[j] {
//                        if j == string2char.count {
//                            return true
//                        }
//                    }
//                }
//            }
//        }
//        return false
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



extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
