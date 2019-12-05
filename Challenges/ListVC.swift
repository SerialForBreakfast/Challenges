//
//  ViewController.swift
//  Challenges
//
//  Created by Joseph McCraw on 5/19/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

class ListVC: UITableViewController {
    @IBOutlet var challengesTableView: UITableView!
    
    let challenges = HWSChallenges()
    let adventOfCode = AdventOfCode2018()
    var challengeResults: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("HWS Challenges Results")
        challengeResults.append(String(challenges.challenge1(input: "no Dupes")))
        print(challenges.challenge1(input: "no Dupes"))
        challengeResults.append(String(challenges.challenge2(input: "aabbaa")))
        print(challenges.challenge4(string1: "abcdefg", string2: "cde"))
        print(challenges.challenge4(string1: "abcdefg", string2: "rde"))
        
        print(challenges.challenge5(input: "potato", count: "o"))
        print(challenges.challenge6(string: "Alabama"))
        print(challenges.challenge7(string: "3   2  1 1 2  3  "))
        print(challenges.challenge8(input: "abcdef", rotated: "cde"))
        print(challenges.challenge9(input: "The quick brown fox jumped over the lazy dog."))
        print(challenges.challenge10(input: "AaaBbbCcc"))
        print(challenges.challenge11(string1: "ABCDEFG", string2: "ABCXXXXG"))
        print(challenges.challenge12(string: "dog don't does dork donut"))
        print(challenges.challenge13(input: "AAABBBBbb"))
        //print(challenges.challenge14(string: "wombat"))
        
//        print("The length of the largest common strings is: \(challenges.LCSLength(x: "ABCBDAB", y: "BDCABA", m: 7, n: 6))")
        //print("Advent Of Code Results")
        
//        print("The length of the largest common strings is: \(challenges.LCSLength(x: "AAABBBB", y: "ABAABA", m: 7, n: 6))")
        //print(adventOfCode.Day1a())
        //print(adventOfCode.Day1b())
//        var myDog1 = DogClass(age: 2, name: "Lassie")
//        var myDog2 = myDog1
//        myDog2.name = "Rin Tin Tin"
//        print(myDog1.name)
//        var myCat1 = CatStruct(age: 3, name: "Garfield")
//        var myCat2 = myCat1
//        myCat2.name = "Grumpy"
//        print(myCat1.name)
//        print(challengeResults)
        let kth = Kth_Largest_Element()
        print(kth.simpleImplementation([1,3,2,4,5,9,8,7,6], 2))
        print(kth.quickSelectImplementation([1,3,2,4,5,9,8,7,6], 2))
        
        
        let adventOfCode = AdventOfCode2019()
        print("AoC2019_Day_01_Input \(adventOfCode.Day1())")

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let row: [Int] = [challengeResults.count, 1]
        return row[section]
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionTitles: [String] = ["Hacking With Swift Challenges"]
        return sectionTitles[section]
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = challengeResults[indexPath.row]
        return cell
    }
}

