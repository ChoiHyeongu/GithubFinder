//
//  ContributionGraphViewModel.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/06.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation

class ContributionGraphViewModel: ObservableObject {
  @Published var contributions = [[Contribution]](repeating: Array(repeating: Contribution(), count: 0), count: 20)

  init() {
    setContributionGraph(username: "choihyeongu")
  }

  /// 컨트리뷰션 정보 저장하기
  /// - Parameter username: 유저이름
  func setContributionGraph(username: String) {
    GithubAPI.shared.getContributions("choihyeongu") { result in
      switch result {
      case let .success(data):
        let conData = Array(data.contributions.suffix(from: 956))
        for (index, item) in conData.enumerated() {
          self.contributions[index / 7].append(item)
        }
      case let .failure(error):
        print(error)
      }
    }
  }
}
