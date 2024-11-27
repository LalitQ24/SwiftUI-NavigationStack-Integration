//
//  ContentView.swift
//  NavigationStack
//
//  Created by Lalit Kumar on 27/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var userName: String = ""
    @State var password: String = ""
    @State private var path = NavigationPath()
    @StateObject private var userViewModel = UserViewModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                TextField("UserName", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button {
                    // do some work validation to username and password is empty
                    path.append("LoginView")
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                }
                .frame(width: 120, height: 50)
                .background(.blue)
                .buttonStyle(.borderless)
                .clipShape(RoundedRectangle(cornerRadius: 5.0))
            }
            .padding(.top, 50)
            Spacer()
                .navigationDestination(for: String.self) { value in
                    if value == "LoginView" {
                        UserListView(userViewModel: userViewModel)
                    }
                }
                .navigationTitle("")
                .toolbarBackground(.background, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    ContentView()
}
