//
//  EditProfileRowView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 15/12/2024.
//

import SwiftUI

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Text(title)
                .padding(.horizontal)
                .frame(width: 100, alignment: .leading)
            
            VStack {
                TextField(placeholder, text: $text)
                
                Divider()
            }
        }
        .font(.subheadline)
        .padding(.trailing)
    }
}

#Preview {
    EditProfileRowView(title: "Name", placeholder: "Bruce Wayne", text: .constant(""))
}
