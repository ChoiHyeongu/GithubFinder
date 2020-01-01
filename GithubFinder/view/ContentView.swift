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
        ProfileView()
          .tabItem { Text("Profile") }.tag(1)
        SearchView()
          .tabItem { Text("Search") }.tag(2)
        TrendingView()
          .tabItem { Text("Trending") }.tag(3)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
