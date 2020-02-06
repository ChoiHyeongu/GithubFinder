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
    setContributionGraph(username: "choihyeongu")
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
        print("[GithubAPI] setUser error \(error)")
      }
    }
  }

  /// 컨트리뷰션 정보 저장하기
  /// - Parameter username: 유저이름
  func setContributionGraph(username: String) {
    GithubAPI.shared.getContributions("choihyeongu") { result in
      switch result {
      case let .success(data):
        let list = Array(data.contributions[AppConfig.GRAPH_RANGE].reversed())
        for (index, item) in list.enumerated() {
          self.contributions[index / 7].append(item)
        }
      case let .failure(error):
        print("[GithubAPI] setContributionGraph error \(error)")
      }
    }
  }
}
