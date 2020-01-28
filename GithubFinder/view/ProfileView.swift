//
//  ProfileView.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/30.
//  Copyright © 2019 Choi. All rights reserved.
//

import SwiftUI
import URLImage

struct ProfileView: View {
  @ObservedObject var profileViewModel: ProfileViewModel
  var url: URL = URL(string: "https://avatars2.githubusercontent.com/u/35494666?v=4")!

  var ProfileImageView: some View {
    VStack {
      URLImage(url) { proxy in
        proxy.image
          .resizable()
          .aspectRatio(contentMode: .fill)
          .clipShape(Circle())
      }
      .frame(width: 200.0, height: 200.0)
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
      .shadow(radius: 10)
      
      Text(profileViewModel.user.bio ?? "")
        .font(.callout)
    }
  }

  var InformationsView: some View {
    VStack(alignment: .leading) {
      Text(profileViewModel.user.login)
      Text("Email : \(profileViewModel.user.email ?? "")")
      Text("Followers: \(profileViewModel.user.followers)")
      Text("Following: \(profileViewModel.user.following)")
    }
  }

  var ProfileImageBackgroundView: some View {
    LinearGradient(gradient: Gradient(colors: [Config.GITHUB_BACKGROUND, Config.GITHUB_BACKGROUND]), startPoint: .leading, endPoint: .trailing)
      .padding(.bottom, 80)
  }

  var body: some View {
    VStack {
      ProfileImageBackgroundView
      ProfileImageView
        .offset(y: -190)
      InformationsView
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView(profileViewModel: ProfileViewModel(login: "Choihyeongu"), url: URL(string: "https://avatars2.githubusercontent.com/u/35494666?v=4")!)
  }
}
