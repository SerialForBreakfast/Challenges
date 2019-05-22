//
//  AdventOfCode2018.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/19/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

struct AdventOfCode2018 {
    
    func Day1a() -> Int {
        var answer: Int = 0
        if let path = Bundle.main.path(forResource: "adventOfCode2018Day1Input", ofType: "txt") {
            let fm = FileManager()
            let exists = fm.fileExists(atPath: path)
            if (exists) {
                let content = fm.contents(atPath: path)
                let contentAsString = String(data: content!, encoding: String.Encoding.utf8)
                let lines = contentAsString?.components(separatedBy: "\n")
//                print(lines)
                for i in lines! {
                    if i != nil {
                        if var j = Optional(i.replacingOccurrences(of: "+", with: "")) {
                            if j == "" {
                                j = "0"
                            }
                            let formattedNumber: Int = Int(j)!
                            answer += formattedNumber
                        }
                    }
                }
            } else {
                print("File doesn't exist")
            }
        }
        print("Day 1a: \(answer)")
        return answer
    }
    
    func Day1b() -> Int {
        var answer: Int = 0
        var frequencyArray: [Int] = []
        if let path = Bundle.main.path(forResource: "adventOfCode2018Day1Input", ofType: "txt") {
            let fm = FileManager()
            let exists = fm.fileExists(atPath: path)
            if (exists) {
                let content = fm.contents(atPath: path)
                let contentAsString = String(data: content!, encoding: String.Encoding.utf8)
                let lines = contentAsString?.components(separatedBy: "\n")
                //                print(lines)
                for i in lines! {
                    if i != nil {
                        if var j = Optional(i.replacingOccurrences(of: "+", with: "")) {
                            if j == "" {
                                j = "0"
                            }
                            let formattedNumber: Int = Int(j)!
                            answer += formattedNumber
                            //print(formattedNumber)
                            frequencyArray.append(answer)
                        }
                    }
                }
            } else {
                print("File doesn't exist")
            }
        }
        print("Day 1b: \(answer)")
        return answer
    }
}
