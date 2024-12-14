//
//  CreatePasswordView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct CreatePasswordView: View {
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        SignUpView(title: "Create a password",
                   subTitle: "Your password must be at least 6 charcters in length.",
                   textField: "Password",
                   text: $viewModel.password,
                   destination: CompleteSignUpView())
    }
}

#Preview {
    CreatePasswordView()
}
