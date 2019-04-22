//
//  LadderGame.swift
//  LadderGame
//
//  Created by JieunKim on 22/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct LadderGame {
//    private(set) var Player : [LadderPlayer]
    private var players: [LadderPlayer] = []
    // 이 변수에 대한 접근을 막는게 private인데, set을 사용하여 이 변수에 대한 set만 막는다.
    // get을 할 수 있다.
    private var height = 0
    
    public func getPlayer()-> [LadderPlayer] {
        return players
    }
    
    init(players: [LadderPlayer], height: Int) {
        self.players = players
        self.height = height
    }
    
    var numberOfPlayer: Int {
        get {
            return players.count
        }
    }
    
    var ladder: Ladder {
        get {
            return Ladder(numberOfPlayer: numberOfPlayer, ladderLayer: height)
        }
    }
    
}

