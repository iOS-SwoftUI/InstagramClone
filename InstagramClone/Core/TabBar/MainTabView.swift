//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Sameed Ansari on 06/12/2024.
//

import SwiftUI

enum Tab {
    case home, search, upload, notifiaction, profile
}

struct MainTabView: View {
    let user: User
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationStack {
                FeedView()
            }
            .tabItem {
                Image(systemName: "house")
            }
            .tag(Tab.home)
            
            NavigationStack {
                SearchView()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
            }
            .tag(Tab.search)
            
            NavigationStack {
                UploadPostView(selectedTab: $selectedTab)
            }
            .tabItem {
                Image(systemName: "plus.square")
            }
            .tag(Tab.upload)
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(Tab.notifiaction)
            
            NavigationStack {
                ProfileView(user: user)
            }
            .tabItem {
                Image(systemName: "person")
            }
            .tag(Tab.profile)
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView(user: User.MOCK_USERS[0])
}
