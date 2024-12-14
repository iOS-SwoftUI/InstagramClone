//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 06/12/2024.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        ScrollView {
            ProfileHeaderView(user: user)
            
            PostGridView(posts: posts)
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
