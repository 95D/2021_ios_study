//
//  MockCook.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/30.
//  Copyright © 2022 study.org. All rights reserved.
//

import Foundation
import SwiftUI
import XCTest
@testable import Sample

class MockCook: XCTestCase, CookProtocol{
    var cookRamenCallCount: Int = 0
    var cookRamenBowls: Int = 0
    var cookRamenSoup: RamenSoup?
    var cookRamenExtras: [String] = []
    
    func cookRamen(bowls: Int, soup: RamenSoup, extras: [String])->Void{
        print("Mock Cooked")
        cookRamenCallCount+=1
        cookRamenBowls=bowls
        cookRamenSoup=soup
        cookRamenExtras=extras
    }
    
    func verifyCookRamen(bowls: Int, soup: RamenSoup, extrasMatcher: (([String])->Bool), file: StaticString = #file, line: UInt = #line) -> Void {
        XCTAssertEqual(cookRamenCallCount, 1,file: file,line: line)
        XCTAssertEqual(cookRamenBowls, bowls,file: file,line: line)
        XCTAssertEqual(cookRamenSoup, soup,file: file,line: line)
        XCTAssertTrue(extrasMatcher(cookRamenExtras),file: file,line: line)
    }

}
