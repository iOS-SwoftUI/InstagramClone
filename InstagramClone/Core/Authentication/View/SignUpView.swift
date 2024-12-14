//
//  SignUpView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct SignUpView<Destination: View>: View {
    let title: String
    let subTitle: String
    let textField: String
    @Binding var text: String
    let destination: Destination
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(subTitle)
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
            
            if textField == "Password" {
                SecureField(textField, text: $text)
                    .modifier(IGTextFieldModifier())
            } else {
                TextField(textField, text: $text)
                    .textInputAutocapitalization(.never)
                    .modifier(IGTextFieldModifier())
            }
            
            
            NavigationLink {
                destination
                    .navigationBarBackButtonHidden()
            } label: {
                 Text("Next")
                    .frame(maxWidth: .infinity)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    SignUpView(title: "Add", subTitle: "add", textField: "Enter your email", text: .constant("Hello"), destination: CreateUsernameView())
}
