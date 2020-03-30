//
//  Enum.swift
//  GithubFinder
//
//  Created by Choi on 2020/03/30.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation

/// Graph Levels
enum Level: String {
  case level1 = "level1"
  case level2 = "level2"
  case level3 = "level3"
  case level4 = "level4"
  case level5 = "level5"
}

/// Programming languages
enum Language: String {
  case all = "All"
  case java = "Java"
  case kotlin = "Kotlin"
  case python = "Python"
  case javascript = "JavaScript"
  case swift = "Swift"
}

/// Repository types
enum Type: String {
  case all = "All"
  case publicRepo = "Public"
  case privateRepo = "Private"
}

/// Repository options
enum Option: String {
  case language = "Language"
  case type = "Type"
}
