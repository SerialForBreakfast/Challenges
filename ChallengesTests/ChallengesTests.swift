//
//  ChallengesTests.swift
//  ChallengesTests
//
//  Created by Joseph McCraw on 5/19/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import XCTest
@testable import Challenges

class ChallengesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let challenges = Challenges()
        XCTAssert((challenges.challenge1(input: "no Dupes")))
        XCTAssert(challenges.challenge2(input: "aabbaa"))
        XCTAssert(!challenges.challenge2(input: "aabcaa"))
        XCTAssert(challenges.challenge4(string1: "abcdefg", string2: "cde"))
        XCTAssert(challenges.challenge4(string1: "abcdefg", string2: "rde"))
        
        XCTAssert(challenges.challenge5(input: "potato", count: "o") == 2)
        XCTAssert(challenges.challenge6(string: "Alabama") == "Albm" )
        XCTAssert(challenges.challenge7(string: "3   2  1 1 2  3  ") == "3 2 1 1 2 3")
        XCTAssert(challenges.challenge8(input: "abcdef", rotated: "cde"))
        XCTAssert(challenges.challenge9(input: "The quick brown fox jumped over the lazy dog."))
//        XCTAssert(challenges.challenge10(input: "AaaBbbCcc"))
//        XCTAssert(challenges.challenge11(string1: "ABCDEFG", string2: "ABCXXXXG"))
        XCTAssert(challenges.challenge12(string: "dog don't does dork donut") == "do")
        XCTAssert(challenges.challenge13(input: "AAABBBBbb") == "A3B4b2")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
