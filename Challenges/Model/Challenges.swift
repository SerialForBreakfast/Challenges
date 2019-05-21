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
    // Remove duplicate letters from a string
    func challenge6(string: String) -> String {
        var noDuplicateLetters: String = ""
        for letter in string {
            if !noDuplicateLetters.lowercased().contains(letter.lowercased()) {
                noDuplicateLetters.append(letter)
            }
        }
        return noDuplicateLetters
    }
    // Condense Whitespace to only 1 character
    func challenge7(string: String) -> String {
        var condensedWhitespace: String = ""
        for letter in string {
            if letter == " " {
                if !condensedWhitespace.hasSuffix(" ") {
                    condensedWhitespace.append(letter)
                }
            } else {
                condensedWhitespace.append(letter)
            }
        }
        return condensedWhitespace
    }
    // String is rotate
    func challenge8(input: String, rotated: String) -> Bool {
        let doubledString = input + input
        return doubledString.contains(rotated)
    }
    // Is it a pangram.  Does it have all the letters of the alphabet?
    func challenge9 (input: String) -> Bool {
        let set = Set(input.lowercased())
        let letters = set.filter { $0 >= "a" && $0 <= "z" }
        return letters.count == 26
    }
    // Count all Vowels and consonants
    func challenge10(input: String) -> ( Int, Int ) {
        var vowelCount = 0, consonantCount = 0
        let letters = input.lowercased().filter{ $0 >= "a" && $0 <= "z" }
        for letter in letters {
            if (String(letter) == "a" || String(letter) == "e" || String(letter) == "i" || String(letter) == "o" || String(letter) == "u"  ) {
                vowelCount += 1
            } else {
                consonantCount += 1
            }
        }
        return ( vowelCount, consonantCount )
    }
    
    //  compares to string to be identical in length but no more than 3 different letters
    func challenge11(string1: String, string2: String) -> Bool {
        if (string1.count == string2.count) {
            var differentLetters = 0
            if differentLetters <= 3 {
                for i in 0...string1.count {
                    let index1 = string1.index(string1.startIndex, offsetBy: i)
                    let index2 = string2.index(string2.startIndex, offsetBy: i)
                    if index1 != index2 {
                        differentLetters += 1
                    }
                }
            } else {
                return false
            }
            return true
        } else {
            return false
        }
    }
    
    
    
}



//extension String {
//    subscript(i: Int) -> String {
//        return String(self[index(startIndex, offsetBy: i)])
//    }
//}
