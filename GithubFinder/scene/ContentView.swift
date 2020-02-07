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
    ZStack {
      ProfileScene(profileViewModel: ProfileViewModel(login: "Choihyeongu"))
      RepositorySlideView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
