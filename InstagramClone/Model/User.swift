//
//  File.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import Foundation
import FirebaseAuth

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        User(id: NSUUID().uuidString, username: "batman", profileImageUrl: "profile_image_1", fullname: "Bruce Wayne" , bio: "Gotham's dark knight", email: "batman@gmail.com"),
        User(id: NSUUID().uuidString, username: "Ahmed", profileImageUrl: "profile_image_2", fullname: nil , bio: "Testing bio 1", email: "batman@gmail.com"),
        User(id: NSUUID().uuidString, username: "Ali", profileImageUrl: "profile_image_3", fullname: "Ali Raza" , bio: nil, email: "batman@gmail.com"),
        User(id: NSUUID().uuidString, username: "Haseeb", profileImageUrl: "profile_image_1", fullname: nil , bio: nil, email: "batman@gmail.com"),
        User(id: NSUUID().uuidString, username: "Saif", profileImageUrl: "profile_image_2", fullname: "Saifullah Saeed" , bio: "Testing bio 2", email: "batman@gmail.com"),
    ]
}
