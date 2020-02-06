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
  @Published var contributions = [[Contribution]](repeating: Array(repeating: Contribution(), count: 0), count: 20)

  init(login: String) {
    setUser(login: login)
  }

  /// 유저 정보 저장하기
  /// - Parameter login: 유저 로그인 아이디
  func setUser(login: String) {
    GithubAPI.shared.getUser(login) { result in
      switch result {
      case let .success(user):
        self.user = user
        self.user.bio = user.bio?.filter { !"\r\n".contains($0) }
        self.user.bio = self.user.bio?.replacingOccurrences(of: "  ", with: "")
      case let .failure(error):
        print(error)
      }
    }
  }
}
