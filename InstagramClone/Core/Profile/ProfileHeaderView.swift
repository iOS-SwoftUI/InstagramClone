//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 09/12/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .frame(maxWidth: .infinity)
                
                UserStatView(value: 3, title: "Posts")
                UserStatView(value: 12, title: "Followers")
                UserStatView(value: 4, title: "Following")
            }
            
            VStack(alignment: .leading) {
                if let fullname = user.fullname {
                    Text(fullname)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                }
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, maxHeight: 32)
                    .foregroundStyle(.black)
                    .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
            }
            
            Divider()
        }
        .padding()
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
