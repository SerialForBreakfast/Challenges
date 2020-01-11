//
//  ChallengesModel.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/19/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//  Challenges from the HWS Coding Challenges udemy class

import Foundation

public struct HWSChallenges {
    //  Are the Letters unique? O(1)
    public func challenge1(input: String) -> Bool {
        //Sets contain no duplicates, so comparing length between the Set count and the string count
        return Set(input).count == input.count
    }
    
    //  Is a string a palendrome? O(1)
    func challenge2(input: String) -> Bool {
        let lowerCasedInput = input.lowercased()
        var isPalendrome: Bool = false
        let revesedArray = Array(lowerCasedInput.reversed())
        if revesedArray == Array(lowerCasedInput) {
            isPalendrome = true
        }
        return isPalendrome
    }
    
    // Do two strings have the same characters? O(1)
    func challenge3(string1: String, string2: String) -> Bool {
        if Set(string1) == Set(string2) {
            return true
        }
        return false
    }
    
    //  Does one string contain another?  O(n)
    func challenge4(string1: String, string2: String) -> Bool {
        return string1.lowercased().range(of: string2.lowercased()) != nil
    }
    
    //  How many times does a Character appear in a String O(n)
    func challenge5(input: String, count: Character) -> Int {
        var letterCount = 0
        for letter in input {
            if letter == count {
                letterCount += 1
            }
        }
        return letterCount
    }
    // alternate O(n)
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
    
    // String is rotated
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
    
    // Find the largest string prefix in a space separated wordlist
    func challenge12(string: String) -> String {
        var largestPrefix: String = ""
        var currentPrefix: String = ""
        
        guard let words: [String] = string.components(separatedBy: " ") else {return largestPrefix}
        guard let first = words.first else {return largestPrefix}
        for letter in first {
            currentPrefix.append(letter)
            for word in words {
                if !word.hasPrefix(currentPrefix) {
                    return largestPrefix
                }
            }
            largestPrefix = currentPrefix
        }
        return largestPrefix
    }
    
    //Run Length Encoding Count number of consecutive characters in a string
    func challenge13(input: String) -> String {
        var runLengthEncoding: String = ""
        var currentLetter: Character?
        var letterCount = 0
        
        for letter in input {
            if letter == currentLetter {
                letterCount += 1
            } else {
                if let current = currentLetter {
                    runLengthEncoding.append("\(current)\(letterCount)")
                }
                currentLetter = letter
                letterCount = 1
            }
        }
        if let current = currentLetter {
            runLengthEncoding.append("\(current)\(letterCount)")
        }
        return runLengthEncoding
    }
    
    //String permutations.  Given a string print all possible permutations
    func challenge14(string: String) {
        while string.count > 1 {
            
        }
        
        print(string)
        challenge14(string: string)
    }
    
    func challenge14a(string: String, current: String = "") {
        let length = string.count
        let strArray = Array(string)
        if (length == 0) {
            // there's nothing left to re-arrange; print the result
            print(current)
            print("******")
        } else {
            print(current)
            // loop through every character
            for i in 0 ..< length {
                // get the letters before me
                let left = String(strArray[0 ..< i])
                // get the letters after me
                let right = String(strArray[i+1 ..< length])
                // put those two together and carry on
                challenge14a(string: left + right, current: current +
                    String(strArray[i]))
            } }
    }
    
    // Given 2 string x and y where m and n and the counts of x and y respectively
//    func LCSLength(x: String, y: String, m: Int, n: Int) -> Int {
//
//        if m == 0 || n == 0 {
//            return 0
//        }
//        //        print(x.utf8.)
//        //print("x: \(x[x.startIndex, offsetBy: m - 1]) y: \(y.index(y.startIndex, offsetBy: n - 1))")
//        print(x[x.startIndex])
//        //        print(x.index(after: m - 1) )
//        //        if x[index(x.startIndex, Int32(m - 1) )] == y.index(y.startIndex, offsetBy: n - 1 ) {
//        //            return (LCSLength(x: x, y: y, m: m - 1, n: n - 1) + 1)
//        //        }
//        //            return max(LCSLength(x: x, y: y, m: m, n: n - 1), LCSLength(x: x, y: y, m: m - 1, n: n))
//        //        }
//    }
    
    
    // String extension to allow index access via bracket notation to accommodate MultiCharacter Grapheme Clusters in Unicode
    //extension String {
    //    subscript(i: Int) -> String {
    //        return String(self[index(startIndex, offsetBy: i)])
    //    }
    //}
    
    
    
    
    
}
