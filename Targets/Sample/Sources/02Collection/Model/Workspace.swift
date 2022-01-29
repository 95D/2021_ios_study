//
//  Workspace.swift
//  Sample
//
//  Created by Hyunyou Lim on 2022/01/16.
//  Copyright © 2022 study.org. All rights reserved.
//

import Foundation
import SwiftUI

struct Workspace: Identifiable{
    var id: Int
    var name: String
    var imageName: String
    var image: Image{
        Image(imageName)
    }
    var description: String {
        "This is a " + name
    }
}
var workspaces: [Workspace]=[
    Workspace(id: 1,name: "Baemin", imageName: "baemin"),
    Workspace(id: 2,name: "Adidas", imageName: "adidas"),
    Workspace(id: 3,name: "Apple", imageName: "apple"),
    Workspace(id: 4,name: "Benz", imageName: "benz"),
    Workspace(id: 5,name: "B.M.W", imageName: "bmw"),
    Workspace(id: 6,name: "Dangguen Market", imageName: "dangguen"),
    Workspace(id: 7,name: "Google", imageName: "google"),
    Workspace(id: 8,name: "Hyundai", imageName: "hyundai"),
    Workspace(id: 9,name: "IBK", imageName: "IBK"),
    Workspace(id: 10,name: "Kakao", imageName: "kakao"),
    Workspace(id: 11,name: "Kookmin", imageName: "kookmin"),
    Workspace(id: 12,name: "Line", imageName: "line"),
    Workspace(id: 13,name: "Naver", imageName: "Naver"),
    Workspace(id: 14,name: "Netflix", imageName: "Netflix"),
    Workspace(id: 15,name: "New Balance", imageName: "newbalance"),
    Workspace(id: 16,name: "Nexon", imageName: "Nexon"),
    Workspace(id: 17,name: "Nike", imageName: "Nike"),
    Workspace(id: 18,name: "Hyundai Oilbank", imageName: "oilbank"),
    Workspace(id: 19,name: "Puma", imageName: "puma"),
    Workspace(id: 20,name: "Samsung", imageName: "samsung"),
    Workspace(id: 21,name: "Shinhan", imageName: "shinhan"),
    Workspace(id: 22,name: "SK", imageName: "sk"),
    Workspace(id: 23,name: "S-OIL", imageName: "soil"),
    Workspace(id: 24,name: "Toss", imageName: "toss"),
    Workspace(id: 25,name: "Woori", imageName: "woori")
]
