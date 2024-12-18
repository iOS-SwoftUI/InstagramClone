//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 06/12/2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
        ScrollView {
            ProfileHeaderView(user: user)
            
            PostGridView(user: user)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    AuthService.shared.signout()
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
