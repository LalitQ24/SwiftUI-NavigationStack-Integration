//
//  UserListView.swift
//  NavigationStack
//
//  Created by Lalit Kumar on 27/11/24.
//

import SwiftUI

struct UserListView: View {
    @StateObject var userViewModel: UserViewModel
    
    var body: some View {
        List {
            ForEach(userViewModel.userInfo, id: \.self) { userInfo in
                // NavigationLink used in List item
                //             NavigationLink {
                //                    UserDetailListView(userModelItem: userInfo)
                //                } label: {
                //                    Text("\(userInfo.name)")
                //                }
                //                NavigationLink(userInfo.name) {
                //                    UserDetailListView(userModelItem: userInfo)
                //                }
                //    NavigationLink(userInfo.name, value: userInfo)
                // NavigationLink(userInfo.name, value: userInfo.name) - destination with value ex (String or Int)
                NavigationLink(value: userInfo) {
                    Text("\(userInfo.name)")
                }
                
            }
        }
        .navigationDestination(for: UserModel.self) { userModel in
            UserDetailListView(userModelItem: userModel)
        }
    }
}

#Preview {
    UserListView(userViewModel: UserViewModel())
}
