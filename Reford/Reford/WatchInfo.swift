//
//  WatchInfo.swift
//  Reford
//
//  Created by Patrick Li on 6/13/15.
//  Copyright © 2015 augusteo. All rights reserved.
//

import Foundation

var team1TableManager: Team1TableManager = Team1TableManager()
var team2TableManager: Team2TableManager = Team2TableManager()

var team1 = "Barcelona"
var team2 = "Nadrid"

enum EventTypeEnum: String {
    case
    goal = "Goal",
    redCard = "Red Card",
    yellowCard = "Yellow Card",
    handBall = "Hand Ball",
    hit = "Hit"
}

struct Event {
    var timeMinute: String
    var timeSecond: String
    var playerNum: String
    var playerName: String
    var type: String
}

class Team1TableManager: NSObject {
    var events1 = [Event]()
    func addTableView(timeMinute: String, timeSecond: String, playerNum: String, playerName: String, type: String){
        events1.append(Event(timeMinute: timeMinute, timeSecond: timeSecond, playerNum: playerNum, playerName: playerName, type: type))
    }
    func addEventStruct1(event: Event){
        events1.append(event)
    }
}

class Team2TableManager: NSObject {
    var events2 = [Event]()
    func addTableView(timeMinute: String, timeSecond: String, playerNum: String, playerName: String, type: String){
        events2.append(Event(timeMinute: timeMinute, timeSecond: timeSecond, playerNum: playerNum, playerName: playerName, type: type))
    }
    func addEventStruct2(event: Event){
        events2.append(event)
    }
}












