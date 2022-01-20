//
//  SwiftUIWorkspaceDetailView.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/16.
//  Copyright © 2022 study.org. All rights reserved.
//

import SwiftUI

struct SwiftUIWorkspaceDetailView: View
{
    var workspace: Workspace
    
    var body: some View {
        VStack{
            workspace.image
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.gray,lineWidth: 2)
                }
            .shadow(color: .gray, radius: 12, x: 1, y: 1)
            Text(workspace.description)
                .font(.title)
            Spacer()
        }
    }
}

struct SwiftUIWorkspaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIWorkspaceDetailView(workspace: Workspace(id: 1, name: "Samsung", imageName: "samsung"))
    }
}
