//
//  Contribution.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/03.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation

struct Contribution: Codable {
  
  init() {
    self.count = 0
    self.date = "0"
    self.color = "0"
  }
  
  /// 횟수
  var count: Int
  /// 날짜
  var date: String
  /// 섹
  var color: String
}
