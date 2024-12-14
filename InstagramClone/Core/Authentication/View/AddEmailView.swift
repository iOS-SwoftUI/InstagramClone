//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    
    var body: some View {
        SignUpView(title: "Add your email",
                   subTitle: "You'll use this email to sign into you account",
                   textField: "Enter your email",
                   text: $email,
                   destination: CreateUsernameView())
    }
}

#Preview {
    AddEmailView()
}
