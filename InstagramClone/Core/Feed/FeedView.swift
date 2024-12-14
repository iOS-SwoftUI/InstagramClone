//
//  FeedView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach(Post.MOCK_POSTS) { post in
                    FeedCell(post: post)
                }
            }
            .padding(.top)
        }
        .navigationTitle("Feed")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image("instagram_text_logo")
                    .resizable()
                    .frame(width: 100, height: 32)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Image(systemName: "paperplane")
                    .imageScale(.large)
            }
        }
    }
}

#Preview {
    FeedView()
}
