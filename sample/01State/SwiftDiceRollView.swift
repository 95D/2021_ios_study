//
//  SwiftDiceRollView.swift
//  sample
//
//  Created by user on 2021/12/10.
//

import SwiftUI

private let TITLE_SWIFT_DICE_ROLL_VIEW_SWIFTUI = "01: State > Dice roll (SwiftUI)"
struct SwiftDiceRollView: View {
    @State
    var diceNumber: Int = 0
    
    var diceText: String {
        diceNumber == 0 ? "??" : String(diceNumber)
    }
    
    var body: some View {
        VStack {
            Text("Dice roll")
            Text(diceText)
            Button("Roll!") { rollDice() }
        }
        .navigationTitle(TITLE_SWIFT_DICE_ROLL_VIEW_SWIFTUI)
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    private func rollDice() {
        diceNumber = Int(arc4random() % 6) + 1
    }
    
    static func navigationLink() -> some View {
        return NavigationLink(
            destination: SwiftDiceRollView(),
            label: { Text(TITLE_SWIFT_DICE_ROLL_VIEW_SWIFTUI) }
        )
    }
}
