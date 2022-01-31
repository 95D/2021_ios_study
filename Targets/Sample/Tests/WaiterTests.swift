//
//  WaiterTests.swift
//  SampleTests
//
//  Created by Hyunyou Lim on 2022/01/30.
//  Copyright © 2022 study.org. All rights reserved.
//

import XCTest
import Foundation
@testable import Sample

class WaiterTests: XCTestCase {
    func testOrder_ShouldCookRamen(){
        let mockCook = MockCook()
        
        let waiter = Waiter(cook: mockCook)
        
        waiter.order()
        
        mockCook.verifyCookRamen(bowls: 2, soup: .miso, extrasMatcher:{extra in extra.count==2 && extra.contains("Galic") && extra.contains("Pepper")})
    }
}
