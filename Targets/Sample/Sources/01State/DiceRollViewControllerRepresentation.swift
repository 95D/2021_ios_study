//
//  DiceRollViewControllerPresentation.swift
//  sample
//
//  Created by user on 2021/12/11.
//

import Foundation
import UIKit
import SwiftUI

private let TITLE_SWIFT_DICE_ROLL_VIEW_CONTROLLER = "01: State > Dice roll (Controller)"

struct DiceRollViewControllerRepresentation: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> DiceRollViewController {
        UIStoryboard(
            name: "DiceRollStoryboard",
            bundle: nil
        ).instantiateViewController(withIdentifier: "DiceRollViewController") as! DiceRollViewController
    }
 
    func updateUIViewController(
        _ uiViewController: DiceRollViewController,
        context: Context
    ) { }
    
    static func navigationLink() -> some View {
        return NavigationLink(
            destination: DiceRollViewControllerRepresentation(),
            label: { Text(TITLE_SWIFT_DICE_ROLL_VIEW_CONTROLLER) }
        )
    }
}
