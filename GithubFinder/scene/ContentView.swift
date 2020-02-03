//
//  ContentView.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/29.
//  Copyright © 2019 Choi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      TabView {
        ProfileView(profileViewModel: ProfileViewModel(login: "Choihyeongu"))
          .tabItem { Text("Profile") }.tag(1)
        SearchView()
          .tabItem { Text("Search") }.tag(2)
        TrendingView()
          .tabItem { Text("Trending") }.tag(3)
        SettingsView()
          .tabItem { Text("Settings") }.tag(4)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
