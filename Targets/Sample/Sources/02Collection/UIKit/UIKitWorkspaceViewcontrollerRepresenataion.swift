//
//  WorkspaceViewcontrollerRepresenataion.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/24.
//  Copyright © 2022 study.org. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct UIKitWorkspaceViewcontrollerRepresentaion: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIKitWorkspaceTableViewController {
        UIStoryboard(
            name: "WorkspaceTableStoryboard",
            bundle: nil
        ).instantiateViewController(withIdentifier: "UIKitWorkspaceTableViewController") as! UIKitWorkspaceTableViewController
    }
 
    func updateUIViewController(
        _ uiViewController: UIKitWorkspaceTableViewController,
        context: Context
    ) { }
    
}
struct UIKitWorkspaceViewcontrollerRepresenataion_Previews: PreviewProvider {
    static var previews: some View {
        UIKitWorkspaceViewcontrollerRepresentaion()
    }
}
