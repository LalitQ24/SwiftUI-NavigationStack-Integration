//
//  UserModel.swift
//  NavigationStack
//
//  Created by Lalit Kumar on 27/11/24.
//

import SwiftUI

struct UserModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let developer: String
    
    init(name: String, developer: String) {
        self.name = name
        self.developer = developer
    }
    
}
