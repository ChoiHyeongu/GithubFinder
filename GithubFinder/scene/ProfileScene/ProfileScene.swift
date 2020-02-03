//
//  ProfileView.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/30.
//  Copyright © 2019 Choi. All rights reserved.
//

import SwiftUI
import URLImage

struct ProfileScene: View {
  @ObservedObject var profileViewModel: ProfileViewModel

  var UsernameAndAvatar: some View {
    VStack {
      URLImage(URL(string: profileViewModel.user.avatar_url)!) { proxy in
        proxy.image
          .resizable()
          .aspectRatio(contentMode: .fill)
          .clipShape(Circle())
      }
      .frame(width: 200.0, height: 200.0)
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
      .shadow(radius: 10)

      Text(profileViewModel.user.login)
        .font(.title)
        .fontWeight(.bold)
      Text(profileViewModel.user.bio ?? "")
    }
    .offset(y: -110)
  }

  var ProfileImageBackgroundView: some View {
    LinearGradient(gradient: Gradient(colors: [AppConfig.GITHUB_BACKGROUND, AppConfig.GITHUB_BACKGROUND]), startPoint: .leading, endPoint: .trailing)
      .frame(height: 280)
      .edgesIgnoringSafeArea(.top)
  }

  var FollowerView: some View {
    VStack {
      Text("Followers")
      Text(String(profileViewModel.user.followers))
    }
    .padding(.leading)
  }

  var FollowingView: some View {
    VStack {
      Text("Follwing")
      Text(String(profileViewModel.user.following))
    }
    .padding(.trailing)
  }

  var body: some View {
    VStack {
      ProfileImageBackgroundView
      UsernameAndAvatar
      Spacer()
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView(profileViewModel: ProfileViewModel(login: "Choihyeongu"))
  }
}
