//
//  sampleApp.swift
//  sample
//
//  Created by user on 2021/11/28.
//

import SwiftUI

let TITLE_APP = "iOS Study samples"
@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ZStack {
                    RootView()
                }
                .navigationTitle(TITLE_APP)
            }
        }
    }
}

struct Sample_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
