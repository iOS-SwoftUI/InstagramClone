//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct AddEmailView: View {
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        SignUpView(title: "Add your email",
                   subTitle: "You'll use this email to sign into you account",
                   textField: "Enter your email",
                   text: $viewModel.email,
                   destination: CreateUsernameView())
    }
}

#Preview {
    AddEmailView()
}
