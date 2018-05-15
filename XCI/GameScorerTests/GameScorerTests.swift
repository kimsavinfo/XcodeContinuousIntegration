//
//  GameScorerTests.swift
//  GameScorerTests
//
//  Created by Kim SAVAROCHE on 21/02/2018.
//  Copyright © 2018 Kim SAVAROCHE. All rights reserved.
//

import XCTest

class GameScorerTests: XCTestCase {
    var scorer: GameScorer!
    
    override func setUp() {
        super.setUp()
        scorer = GameScorer()
    }
    
    override func tearDown() {
        scorer = nil
        super.tearDown()
    }
    
    func test1Point() {
        scorer.addPoint()
        XCTAssert(scorer.getScore() == 15, "Score is wrong, should be 15")
    }
    
    func test2Points() {
        for _ in 1...2 {
            scorer.addPoint()
        }
        XCTAssert(scorer.getScore() == 30, "Score is wrong, should be 30")
    }
    
    func test3Points() {
        for _ in 1...3 {
            scorer.addPoint()
        }
        XCTAssert(scorer.getScore() == 40, "Score is wrong, should be 40")
    }
    
    func test4Points() {
        for _ in 1...4 {
            scorer.addPoint()
        }
        XCTAssert(scorer.getScore() == 0, "Score is wrong, should be 0")
    }
    
    func testFor() {
        var scoreToCheck = 0
        
        for i in 0...3 {
            switch i {
            case 1:
                scoreToCheck = 15
                break
            case 2:
                scoreToCheck = 31
                break
            case 3:
                scoreToCheck = 41
                break
            default:
                scoreToCheck = 0
                break
            }
            XCTAssert(scorer.getScore() == scoreToCheck, "Score is wrong, should be \(scoreToCheck)")
            
            scorer.addPoint()
        }
    }
    
}
