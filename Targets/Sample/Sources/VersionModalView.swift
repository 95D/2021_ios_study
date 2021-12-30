//
//  VersionModalView.swift
//  sample
//
//  Created by user on 2021/12/11.
//

import Foundation
import SwiftUI

struct VersionModalView: View {
    @Binding var isShownModal: Bool
    
    var body: some View {
        VStack {
            Text(getVersionName())
            Button("Dismiss") { dismissModal() }
        }
    }
    
    private func dismissModal() {
        isShownModal.toggle()
    }
    
    private func getVersionName() -> String {
        Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
}
