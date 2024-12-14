//
//  LoginView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("instagram_text_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                VStack {
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(IGTextFieldModifier())
                }
                
                Button {
                    print("Show forgot password")
                } label: {
                     Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {
                    print("Login")
                } label: {
                     Text("Login")
                        .frame(maxWidth: .infinity)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                
                HStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 0.5)
                }
                .foregroundStyle(.gray)
                .padding(.vertical)
                
                HStack {
                    Image("facebook_logo")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue With Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                
                Spacer()
                
                Divider()
                
                HStack {
                    Text("Don't have an account?")
                    
                    NavigationLink {
                        AddEmailView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                }
                .foregroundStyle(Color(.systemBlue))
                .font(.footnote)
                
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    LoginView()
}
