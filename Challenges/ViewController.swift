//
//  ViewController.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/19/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

class ListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("HWS Challenges Results")
        let challenges = Challenges()
        print(challenges.challenge1(input: "no Dupes"))
        assert(challenges.challenge1(input: "no Dupes"))
        
        
        print(challenges.challenge2(input: "aabbaa"))
        assert(challenges.challenge2(input: "aabbaa"))
        print()
        print(challenges.challenge4(string1: "abcdefg", string2: "cde"))
        print(challenges.challenge4(string1: "abcdefg", string2: "rde"))
        
        print("Advent Of Code Results")
        let adventOfCode = AdventOfCode2018()
        print(adventOfCode.Day1())
    }
    

}

