//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct CreateUsernameView: View {
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        SignUpView(title: "Create Username",
                   subTitle: "Pick a username for your new account. You can always change it later.",
                   textField: "Enter a username",
                   text: $viewModel.username,
                   destination: CreatePasswordView())
    }
}

#Preview {
    CreateUsernameView()
}
