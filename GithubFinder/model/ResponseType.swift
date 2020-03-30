//
//  ResponseType.swift
//  GithubFinder
//
//  Created by Choi on 2020/03/30.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation

struct ResponseType<T: Codable>: Codable {
  var Root: T?

  static func empty() -> ResponseType {
    return ResponseType(Root: nil)
  }
}
