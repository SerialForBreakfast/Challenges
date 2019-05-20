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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let challenges = Challenges()
        XCTAssert((challenges.challenge1(input: "no Dupes")))
        XCTAssert(challenges.challenge2(input: "aabbaa"))
        XCTAssert(!challenges.challenge2(input: "aabcaa"))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
