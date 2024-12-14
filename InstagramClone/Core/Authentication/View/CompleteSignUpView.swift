//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct CompleteSignUpView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome to Instagram, sameed.ansari")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using instagram")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
            
            Button {
                print("Complete signup. Move to home")
            } label: {
                 Text("Complete Sign Up")
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
    }
}

#Preview {
    CompleteSignUpView()
}
