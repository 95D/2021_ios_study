//
//  SwiftUIWorkspaceView.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/13.
//  Copyright © 2022 study.org. All rights reserved.
//

import SwiftUI

struct SwiftUIWorkspaceList: View {
    
    var body: some View {
            List{
                ForEach(workspaces){
                    ws in
                    NavigationLink {SwiftUIWorkspaceDetailView(workspace: ws)}
                label:{
                    SwiftUIWorkspaceRow(workspace: ws)
                    
                }
                }
            }
            .navigationTitle("WorkspaceView")
    }
    
    static func navigationLink()->some View{
        return NavigationLink(destination: SwiftUIWorkspaceList(), label: {Text("WorkSpace using SwiftUI")})
    }
}

struct SwiftUIWorkspaceList_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIWorkspaceList()
    }
}
