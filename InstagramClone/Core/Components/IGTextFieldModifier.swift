//
//  IGTextFieldModifier.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
    }
    
    
}
