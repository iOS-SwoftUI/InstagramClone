//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 09/12/2024.
//

import SwiftUI

struct PostGridView: View {
    var posts: [Post]
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    private let gridColumns: [GridItem] = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        LazyVGrid(columns: gridColumns, spacing: 1) {
            ForEach(posts) { post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView(posts: Post.MOCK_POSTS)
}
