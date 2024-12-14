//
//  SearchView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 07/12/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(User.MOCK_USERS) { user in
                    NavigationLink(value: user) {
                        SearchCell(user: user)
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Search...")
        }
        .navigationDestination(for: User.self) { user in
            ProfileView(user: user)
        }
        .navigationTitle("Explore")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SearchView()
}
