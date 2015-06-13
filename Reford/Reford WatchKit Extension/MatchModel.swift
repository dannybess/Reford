//
//  MatchModel.swift
//  Reford
//
//  Created by victor augusteo on 13/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import Foundation

class MatchModel: NSObject {
    static let instance = MatchModel(time: NSDate(), home: 0, away: 0)

    var matchTime: NSDate
    var homeScore: Int
    var awayScore: Int
    var inStarted: Bool
    
    init(time: NSDate, home: Int, away: Int) {
        matchTime = time
        homeScore = home
        awayScore = away
        inStarted = true
    }
    
}