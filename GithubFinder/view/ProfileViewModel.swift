//
//  ProfileViewModel.swift
//  GithubFinder
//
//  Created by Choi on 2020/01/28.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation

class ProfileViewModel: ObservableObject {
  @Published var user: User = User(login: "")

  init(login: String) {
    print("[ProfileViewModel] init")
    getUser(login: login)
  }

  func getUser(login: String) {
    GithubAPI.shared.getUser(login) { result in
      switch result {
      case let .success(user):
        self.user = user
        self.user.bio = user.bio?.filter { !"\r\n".contains($0) }
        self.user.bio = self.user.bio?.replacingOccurrences(of: "  ", with: "")
      case let .failure(error):
        print("\(error)")
      }
    }
  }
}
