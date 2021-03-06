//
//  ProfileViewModel.swift
//  GithubFinder
//
//  Created by Choi on 2020/01/28.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
  @Published var user: User = User(login: "")
  @Published var contributions = [[Contribution]](repeating: Array(repeating: Contribution(), count: 0), count: 20)
  @Published var repos: [Repo] = []

  init(login: String) {
    setUser(login: login)
    setContributionGraph(username: "choihyeongu")
    setUserRepos(username: login)
  }

  /// 유저 정보 저장하기
  /// - Parameter login: 유저 로그인 아이디
  func setUser(login: String) {
    GithubAPI.shared.getUser(login)
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

  func setUserRepos(username: String) {
    GithubAPI.shared.getUserRepos("choihyeongu") { result in
      switch result {
      case let .success(repos):
        self.repos = Array(repos
          .filter { AppConfig.LANGUAGE_STRING.contains($0.language) }
          .prefix(upTo: 6)
        )

      case let .failure(error):
        print("[GithubAPI] setContributionGraph error \(error)")
      }
    }
  }
}
