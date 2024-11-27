//
//  UserDetailListView.swift
//  NavigationStack
//
//  Created by Lalit Kumar on 27/11/24.
//

import SwiftUI

struct UserDetailListView: View {
    var userModelItem: UserModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(userModelItem.name)")
            Text("\(userModelItem.developer)")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
        .opacity(0.5)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .padding(10)
        
    }
}

#Preview {
    UserDetailListView(userModelItem: UserModel(name: "", developer: ""))
}
