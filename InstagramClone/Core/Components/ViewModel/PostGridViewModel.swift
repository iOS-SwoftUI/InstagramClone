//
//  PostGridViewModel.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 18/12/2024.
//

import Foundation

class PostGridViewModel: ObservableObject {
    private let user: User
    @Published var posts = [Post]()
    
    init(user: User) {
        self.user = user
        
        Task { try await fetchUserPosts() }
    }
    
    @MainActor
    func fetchUserPosts() async throws {
        self.posts = try await PostService.fetchUserPost(uid: user.id)
        
        for i in 0..<self.posts.count {
            self.posts[i].user = self.user
        }
    }
    
}
