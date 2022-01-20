//
//  SwiftUIWorkspaceRow.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/14.
//  Copyright © 2022 study.org. All rights reserved.
//

import SwiftUI

struct SwiftUIWorkspaceRow: View {
    var workspace: Workspace
    
    var body: some View {
        VStack{
            HStack{
                workspace.image
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(workspace.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
        }
        
    }
}

struct SwiftUIWorkspaceRow_Previews: PreviewProvider {
    static let ws1 = Workspace(id:1,
        name:"Samsung",imageName: "samsung")
    static let ws2: Workspace = Workspace(id:2,
        name:"Apple",imageName: "apple")
    static var previews: some View{
        Group{
            SwiftUIWorkspaceRow(workspace: ws1)
                .previewLayout(.fixed(width: 400, height: 50))
            
            SwiftUIWorkspaceRow(workspace: ws2)
                .previewLayout(.fixed(width: 400, height: 50))
        }
    }
}
