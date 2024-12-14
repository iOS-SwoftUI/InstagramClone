//
//  CreatePasswordView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    
    var body: some View {
        SignUpView(title: "Create a password",
                   subTitle: "Your password must be at least 6 charcters in length.",
                   textField: "Password",
                   text: $password,
                   destination: CompleteSignUpView())
    }
}

#Preview {
    CreatePasswordView()
}
