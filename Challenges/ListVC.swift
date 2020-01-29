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
    var completedItems: [ListItem] = []
    var sectionTitles: [String] = ["Joe McCraw"]
    
    let challenges = HWSChallenges()
    let adventOfCode = AdventOfCode2018()
    var challengeResults: [String] = []
    
    fileprivate func addHWSChallenges() {
        //        print("HWS Challenges Results")
        sectionTitles.append("Hacking With Swift Challenges")
        let hwsSectionID = 0
        let challenge1 = ListItem(categoryID: hwsSectionID, itemNumber: 0, prompt: "Are the Letters unique? O(1)", output: String(challenges.challenge1(input: "no Dupes")))
        challengeResults.append("Challenge 1: " + String(challenges.challenge1(input: "no Dupes")))
        print(challenges.challenge1(input: "no Dupes"))
        challengeResults.append("Challenge 2: " + String(challenges.challenge2(input: "aabbaa")))
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
    }
    
    fileprivate func addAdventOfCode2019() {
        sectionTitles.append("Advent of Code")
        let adventOfCode = AdventOfCode2019()
        print("AoC2019_Day_01_Input \(adventOfCode.Day1())")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addHWSChallenges()
        //print(challenges.challenge14(string: "wombat"))
        
        let kth = Kth_Largest_Element()
        print(kth.simpleImplementation([1,3,2,4,5,9,8,7,6], 2))
        print(kth.quickSelectImplementation([1,3,2,4,5,9,8,7,6], 2))
        
        
        addAdventOfCode2019()
        
        var hashTable = HashTable<String, String>(capacity: 5)
        hashTable["Joe"] = "McCraw"
        let x = hashTable["Joe"]
        print("Hashtable lookup \(x)")
        hashTable["Joe"] = "Blow"
        print("Hashtable lookup \(x)")
        print(hashTable)
        hashTable["Joe"] = nil
        print(hashTable)
//
//
//        let adjacencyList = AdjacencyList<String>()
//
//        let singapore = adjacencyList.createVertex(data: "Singapore")
//        let tokyo = adjacencyList.createVertex(data: "Tokyo")
//        let hongKong = adjacencyList.createVertex(data: "Hong Kong")
//        let detroit = adjacencyList.createVertex(data: "Detroit")
//        let sanFrancisco = adjacencyList.createVertex(data: "San Francisco")
//        let washingtonDC = adjacencyList.createVertex(data: "Washington DC")
//        let austinTexas = adjacencyList.createVertex(data: "Austin Texas")
//        let seattle = adjacencyList.createVertex(data: "Seattle")
//
//        adjacencyList.add(.undirected, from: singapore, to: hongKong, weight: 300)
//        adjacencyList.add(.undirected, from: singapore, to: tokyo, weight: 500)
//        adjacencyList.add(.undirected, from: hongKong, to: tokyo, weight: 250)
//        adjacencyList.add(.undirected, from: tokyo, to: detroit, weight: 450)
//        adjacencyList.add(.undirected, from: tokyo, to: washingtonDC, weight: 300)
//        adjacencyList.add(.undirected, from: hongKong, to: sanFrancisco, weight: 600)
//        adjacencyList.add(.undirected, from: detroit, to: austinTexas, weight: 50)
//        adjacencyList.add(.undirected, from: austinTexas, to: washingtonDC, weight: 292)
//        adjacencyList.add(.undirected, from: sanFrancisco, to: washingtonDC, weight: 337)
//        adjacencyList.add(.undirected, from: washingtonDC, to: seattle, weight: 277)
//        adjacencyList.add(.undirected, from: sanFrancisco, to: seattle, weight: 218)
//        adjacencyList.add(.undirected, from: austinTexas, to: sanFrancisco, weight: 297)
////        print("am I insane?")
//        print(adjacencyList.description)
        
        // leaf nodes
        let node5 = BinaryTree.node(.empty, "5", .empty)
        let nodeA = BinaryTree.node(.empty, "a", .empty)
        let node10 = BinaryTree.node(.empty, "10", .empty)
        let node4 = BinaryTree.node(.empty, "4", .empty)
        let node3 = BinaryTree.node(.empty, "3", .empty)
        let nodeB = BinaryTree.node(.empty, "b", .empty)

        // intermediate nodes on the left
        let Aminus10 = BinaryTree.node(nodeA, "-", node10)
        let timesLeft = BinaryTree.node(node5, "*", Aminus10)

        // intermediate nodes on the right
        let minus4 = BinaryTree.node(.empty, "-", node4)
        let divide3andB = BinaryTree.node(node3, "/", nodeB)
        let timesRight = BinaryTree.node(minus4, "*", divide3andB)

        // root node
        let tree = BinaryTree.node(timesLeft, "+", timesRight)
        print(tree)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let row: [Int] = [challengeResults.count, 2]
        return row[section]
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return sectionTitles[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        print("Section: \(indexPath.section) Row: \(indexPath.row) " + challengeResults[indexPath.row])
        let finalIndex = completedItems.count - 1
        cell.textLabel?.text = completedItems[indexPath.row].prompt

        return cell
    }
}

