//
//  Repo.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/31.
//  Copyright © 2019 Choi. All rights reserved.
//

import Foundation

struct Repo: Codable, Hashable {
  var name: String
  var full_name: String
  var description: String?
  var language: String
  var stargazers_count: Int
}
