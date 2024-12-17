//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                if let user = post.user {
                    CircularProfileImageView(user: user, size: .xSmall)
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Spacer()
            }
            .padding(.horizontal)
            
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            HStack(spacing: 16) {
                Button {
                    print("like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("share post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.horizontal)
            .foregroundStyle(.black)
            
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top, 1)
            
            HStack {
                Text("\(post.user?.username ?? "")  ")
                    .fontWeight(.semibold) +
                
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .font(.footnote)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top, 1)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POSTS[0])
}
