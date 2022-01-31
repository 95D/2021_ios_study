//
//  Waiter.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/30.
//  Copyright © 2022 study.org. All rights reserved.
//

import Foundation

struct Waiter {
    let cook: CookProtocol
    
    func order(){
        cook.cookRamen(bowls: 2, soup: .miso, extras: ["Pepper","Galic"])
    }
}
