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

  var UsernameAndAvatarView: some View {
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
      UsernameAndAvatarView
      ContributionGraphView()
      Spacer()
    }
  }
}

struct ProfileScene_Previews: PreviewProvider {
  static var previews: some View {
    ProfileScene(profileViewModel: ProfileViewModel(login: "Choihyeongu"))
  }
}
