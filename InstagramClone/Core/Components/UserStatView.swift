//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 06/12/2024.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    UserStatView(value: 3, title: "Following")
}
