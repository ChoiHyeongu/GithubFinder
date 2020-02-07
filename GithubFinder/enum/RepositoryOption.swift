//
//  RepositoryOption.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/07.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation

struct RepositoryOption {
  enum RepositoryOption {
    case type([Type])
    case language([Language])
  }
  
  let option: RepositoryOption
}
