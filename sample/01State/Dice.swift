//
//  Dice.swift
//  sample
//
//  Created by user on 2021/12/25.
//

import Foundation

class Dice : ObservableObject {
    @Published private var diceNumber: Int = 0
    var currentNumber: String {
        diceNumber == 0 ? "??" : String(diceNumber)
    }
    
    func roll() {
        diceNumber = Int(arc4random() % 6) + 1
    }
}
