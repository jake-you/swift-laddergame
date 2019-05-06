//
//  UnitTestLadderGame.swift
//  UnitTestLadderGame
//
//  Created by JH on 06/05/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import XCTest

class UnitTestLadderGame: XCTestCase {
    
    //플레이어이름 오류체크(한사람일때 / 6글자넘었을때 오류발생)
    func testShowPlayerError() {
        XCTAssertThrowsError(try showPlayerError(chNames: ["judy"]))
        XCTAssertThrowsError(try showPlayerError(chNames: ["ChrisHemsworth"]))
        XCTAssertThrowsError(try showPlayerError(chNames: ["judy","ChrisHemsworth"]))
        XCTAssertThrowsError(try showPlayerError(chNames: ["judy","young","hyunsoo"]))
        XCTAssertThrowsError(try showPlayerError(chNames: ["judy","ChrisHemsworth","min","su"]))
        XCTAssertThrowsError(try showPlayerError(chNames: [""]))
        XCTAssertThrowsError(try showPlayerError(chNames: [" "]))
        XCTAssertNoThrow(try showPlayerError(chNames: ["judy","song"]))
        XCTAssertNoThrow(try showPlayerError(chNames: ["judy","song","min","dong","ku"]))
    }
    
    //사다리높이 오류체크(문자입력했을때 / 빈칸으로입력했을때->ladderNum이 0일때 오류발생)
    func testShowLabberError() {
        XCTAssertThrowsError(try showLabberError(chladderNum: 0))
        XCTAssertNoThrow(try showLabberError(chladderNum: 1))
        XCTAssertNoThrow(try showLabberError(chladderNum: 6))
    }
    
    func testMakeStep() {
        let rawData = [true, false]
        XCTAssertEqual(LadderStep.makeStep(target: rawData, changeTargetIndex: 0), "-----", "step생성 실패")
        XCTAssertEqual(LadderStep.makeStep(target: rawData, changeTargetIndex: 1), "     ", "step생성 실패")
    }
    

}
