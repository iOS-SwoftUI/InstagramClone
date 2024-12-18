//
//  SearchCell.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct SearchCell: View {
    let user: User
    
    var body: some View {
        HStack {
            CircularProfileImageView(user: user, size: .xSmall)
            
            VStack(alignment: .leading, spacing: 0) {
                Text(user.username)
                    .fontWeight(.semibold)
                
                if let fullname = user.fullname {
                    Text(fullname)
                }
            }
            .font(.footnote)
            
            Spacer()
        }
        .foregroundStyle(.black)
        .padding(.horizontal)
    }
}

#Preview {
    SearchCell(user: User(id: NSUUID().uuidString, username: "Testuser", profileImageUrl: "profile_image_1", fullname: "Test User", bio: "Testing bio", email: "test@gmail.com"))
}
