//
//  Post.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 09/12/2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static let MOCK_POSTS: [Post] = [
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test Caption 1", likes: 0, imageUrl: "profile_image_1", timestamp: Date(), user: User.MOCK_USERS[1]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test Caption 2", likes: 1, imageUrl: "profile_image_1", timestamp: Date(), user: User.MOCK_USERS[0]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test Caption 3", likes: 4, imageUrl: "profile_image_3", timestamp: Date(), user: User.MOCK_USERS[0]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test Caption 4", likes: 50, imageUrl: "profile_image_1", timestamp: Date(), user: User.MOCK_USERS[2]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test Caption 5", likes: 44, imageUrl: "profile_image_1", timestamp: Date(), user: User.MOCK_USERS[0]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test Caption 6", likes: 2, imageUrl: "profile_image_3", timestamp: Date(), user: User.MOCK_USERS[3]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test Caption 7", likes: 7, imageUrl: "profile_image_3", timestamp: Date(), user: User.MOCK_USERS[0]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test Caption 8", likes: 79, imageUrl: "profile_image_3", timestamp: Date(), user: User.MOCK_USERS[4]),
    ]
}
