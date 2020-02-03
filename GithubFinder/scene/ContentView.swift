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
        ProfileScene(profileViewModel: ProfileViewModel(login: "Choihyeongu"))
          .tabItem { Text("Profile") }.tag(1)
        SearchScene()
          .tabItem { Text("Search") }.tag(2)
        TrendingScene()
          .tabItem { Text("Trending") }.tag(3)
        SettingsScene()
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
