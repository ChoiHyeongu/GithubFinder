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
      //.shadow(radius: 5)
      .padding(.top, 15)

      Text(profileViewModel.user.login)
        .font(.title)
        .fontWeight(.bold)
      Text(profileViewModel.user.bio ?? "")
    }
  }

  var body: some View {
    VStack {
      UsernameAndAvatarView
      ContributionGraphView(contributions: $profileViewModel.contributions)
      Spacer()
    }
  }
}

struct ProfileScene_Previews: PreviewProvider {
  static var previews: some View {
    ProfileScene(profileViewModel: ProfileViewModel(login: "Choihyeongu"))
  }
}
