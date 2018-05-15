//
//  GameScorer.swift
//  XCI
//
//  Created by Kim SAVAROCHE on 21/02/2018.
//  Copyright © 2018 Kim SAVAROCHE. All rights reserved.
//

import UIKit

class GameScorer: NSObject {
    var score:Int = 0
    
    func reset() {
        score = 0
    }
    
    func addPoint() {
        switch score {
        case 40:
            score = 0
            break
        case 30:
            score += 10
            break
        case 15, 0:
            score += 15
            break
        default:
            break
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
