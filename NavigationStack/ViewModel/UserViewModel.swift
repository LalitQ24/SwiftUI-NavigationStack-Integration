//
//  UserViewModel.swift
//  NavigationStack
//
//  Created by Lalit Kumar on 27/11/24.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var userInfo: [UserModel]
    
    init() {
        userInfo = [UserModel(name: "Tim", developer: "Swift developer"),
                    UserModel(name: "David", developer: "Swift UI developer"),
                    UserModel(name: "John", developer: "Andoid developer"),
                    UserModel(name: "John", developer: "Andorid - (Jet compose) developer"),
                    UserModel(name: "Mike", developer: "Web developer"),
                    UserModel(name: "Lalit", developer: "Swift UI, Swift, Objective C, Andorid developer"),
        ]
    }
}

