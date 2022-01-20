//
//  ListView.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/12.
//  Copyright © 2022 study.org. All rights reserved.
//

import SwiftUI

private let TITLE_EXAMPLES_02 = "Examples 02"
struct Examples02:View {
    var body: some View{
        VStack{
            Text("This is Example02")
            NavigationLink{
                SwiftUIWorkspaceList()
            } label: {
                Text("WorkSpace using SwiftUI")
            }
//            NavigationLink{
//                UIKitWorkspaceView()
//            } label: {
//                Text("WorkSpace using UIKit")
//            }
        }
    }
    
    static func navigationLink()->some View{
        return NavigationLink(
            destination: Examples02(),
            label: { Text(TITLE_EXAMPLES_02) }
        )
    }
}
struct Examples02_Previews: PreviewProvider {
    static var previews: some View {
        Examples02()
    }
}
