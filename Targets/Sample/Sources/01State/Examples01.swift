//
//  ExamplesFor01.swift
//  sample
//
//  Created by user on 2021/12/10.
//

import SwiftUI

private let TITLE_EXAMPLES_01 = "Examples 01"
struct Examples01: View {
    var body: some View {
        VStack {
            SwiftDiceRollView.navigationLink()
            DiceRollViewControllerRepresentation.navigationLink()
        }.navigationTitle(TITLE_EXAMPLES_01)
    }
    
    static func navigationLink() -> some View {
        return NavigationLink(
            destination: Examples01(),
            label: { Text(TITLE_EXAMPLES_01) }
        )
    }
}
