//
//  CookProtocol.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/30.
//  Copyright © 2022 study.org. All rights reserved.
//

import Foundation
import SwiftUI

enum RamenSoup{
    case shio //salt base
    case shoyu //soy source base
    case miso //miso paste base
    case tonkotsu //pork base, creamy
}

protocol CookProtocol{
    func cookRamen(
        bowls: Int,
        soup: RamenSoup,
        extras: [String]
    ) -> Void
}
