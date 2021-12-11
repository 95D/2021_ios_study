//
//  ContentView.swift
//  sample
//
//  Created by user on 2021/11/28.
//

import SwiftUI

struct RootView: View {
    @State
    private var isShownVersionModal: Bool = false
    
    var body: some View {
        VStack {
            Button("Show version") { isShownVersionModal.toggle() }
            Examples01.navigationLink()
        }
        .sheet(isPresented: $isShownVersionModal) {
            VersionModalView(isShownModal: $isShownVersionModal)
        }
    }
}
