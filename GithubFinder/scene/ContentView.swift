//
//  ContentView.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/29.
//  Copyright © 2019 Choi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var showSettingView = false

  var body: some View {
    Group {
      ZStack {
        GithubLinkButton
        SettingButton
        ProfileScene(profileViewModel: ProfileViewModel(login: "Choihyeongu"))
      }
    }
  }

  var GithubLinkButton: some View {
    Button(action: { self.openGithub() }) {
      Image("GitHub-Mark")
        .resizable()
        .frame(width: 30, height: 30)
        .foregroundColor(AppConfig.GITHUB_BACKGROUND)
        .position(x: UIScreen.SCREEN_WIDTH / 15, y: 15)
    }
  }

  var SettingButton: some View {
    Button(action: { self.showSettingView.toggle() }, label: {
      Image(systemName: "gear")
        .resizable()
        .frame(width: 30, height: 30)
        .foregroundColor(AppConfig.GITHUB_BACKGROUND)
        .position(x: UIScreen.SCREEN_WIDTH - 25, y: 15)
    })
      .popover(isPresented: self.$showSettingView) {
        SettingScene()
      }
  }

  func openGithub() {
    if let url = AppConfig.GITHUB_PROFILE {
      UIApplication.shared.open(url)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
