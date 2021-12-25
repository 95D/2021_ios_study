//
//  SwiftDiceRollView.swift
//  sample
//
//  Created by user on 2021/12/10.
//

import SwiftUI

private let TITLE_SWIFT_DICE_ROLL_VIEW_SWIFTUI = "01: State > Dice roll (SwiftUI)"

struct SwiftDiceRollView: View {
    @StateObject
    var dice: Dice = Dice()
    
    var body: some View {
        VStack {
            Text("Dice roll")
            Text(dice.currentNumber)
            Button("Roll!") { dice.roll() }
        }
        .navigationTitle(TITLE_SWIFT_DICE_ROLL_VIEW_SWIFTUI)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    static func navigationLink() -> some View {
        return NavigationLink(
            destination: SwiftDiceRollView(),
            label: { Text(TITLE_SWIFT_DICE_ROLL_VIEW_SWIFTUI) }
        )
    }
}
