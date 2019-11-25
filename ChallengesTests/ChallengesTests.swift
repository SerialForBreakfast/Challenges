//
//  ChallengesTests.swift
//  ChallengesTests
//
//  Created by Joseph McCraw on 5/19/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import XCTest

class ChallengesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let challenges = HWSChallenges()
        XCTAssert((challenges.challenge1(input: "no Dupes")))
        XCTAssert(challenges.challenge2(input: "aabbaa"))
        XCTAssert(challenges.challenge3(string1: "cdnjkds", string2: "cdnjkds"))
        XCTAssert(challenges.challenge4(string1: "abcdefg", string2: "cde"))
        XCTAssert(challenges.challenge5(input: "potato", count: "o") == 2)
        XCTAssert(challenges.challenge5b(input: "potato", count: "o") == 2)
        XCTAssert(challenges.challenge5c(input: "potato", count: "o") == 2)
        XCTAssert(challenges.challenge6(string: "Alabama") == "Albm" )
        XCTAssert(challenges.challenge7(string: "3   2  1 1 2      3") == "3 2 1 1 2 3")
        XCTAssert(challenges.challenge8(input: "abcdef", rotated: "cde"))
        XCTAssert(challenges.challenge9(input: "The quick brown fox jumps over the lazy dog"))
        XCTAssert(challenges.challenge9(input: "Sympathizing would fix Quaker objectives"))
        
//        XCTAssertEqual(challenges.challenge10(input: "AaaBbbCcc"), (3,6))
        
        /*How should you write an XCTAssertEqual test for a function that returns a tuple (Int, Int)?  Tuples aren't concrete types, so they can't conform to equatable right?  I wanted to write XCTAssertEqual(funcThatReturnsATupleWithAOneAndATwo(), (1,2))

         but I had to
         let tupleResult = funcThatReturnsATupleWithAOneAndATwo()
         XCTAssert(tupleResult == (1,2))
         Why is equatable in one instance but not the other? */
        
        let tupleResult = challenges.challenge10(input: "AaaBbbCcc")
        XCTAssert(tupleResult == (3,6))
        XCTAssert(challenges.challenge11(string1: "ABCDEFG", string2: "ABCXXXG"))
        XCTAssert(challenges.challenge12(string: "dog don't does dork donut") == "do")
        XCTAssert(challenges.challenge13(input: "AAABBBBbb") == "A3B4b2")
        
        let fb = FizzBuzz()
        XCTAssertEqual(fb.isIntAFizzOrBuzz(num: 15), "fizzbuzz")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            let perfChallenge = HWSChallenges()
            print(perfChallenge.challenge1(input: "no Dupes"))
        }
    }

}
