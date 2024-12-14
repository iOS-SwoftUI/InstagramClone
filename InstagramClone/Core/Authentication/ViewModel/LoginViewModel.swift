//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 14/12/2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
