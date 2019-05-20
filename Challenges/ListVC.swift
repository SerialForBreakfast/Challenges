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
    
    let challenges = Challenges()
    let adventOfCode = AdventOfCode2018()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("HWS Challenges Results")
        print(challenges.challenge1(input: "no Dupes"))
        assert(challenges.challenge1(input: "no Dupes"))
        
        
        print(challenges.challenge2(input: "aabbaa"))
        assert(challenges.challenge2(input: "aabbaa"))
        print()
        print(challenges.challenge4(string1: "abcdefg", string2: "cde"))
        print(challenges.challenge4(string1: "abcdefg", string2: "rde"))
        
        print(challenges.challenge5(input: "potato", count: "o"))
        print(challenges.challenge6(string: "Alabama"))
        print(challenges.challenge7(string: "3   2  1 1 2  3  "))
        
        //print("Advent Of Code Results")
        //print(adventOfCode.Day1a())
        //print(adventOfCode.Day1b())
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let row: [Int] = [4, 1]
        return row[section]
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionTitles: [String] = ["Hacking With Swift Challenges", "Advent of Code 2018"]
        return sectionTitles[section]
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let labelArray = [String(challenges.challenge1(input: "no Dupes")), "", "", "", ""]
        cell.textLabel?.text = labelArray[indexPath.row]
        return cell
    }
}

