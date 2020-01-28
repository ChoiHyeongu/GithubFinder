//
//  User.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/31.
//  Copyright © 2019 Choi. All rights reserved.
//

import Foundation

struct User: Codable {
  var login: String
  var email: String?
  var followers: Int = 0
  var following: Int = 0
  var avatar_url: String = ""
  var bio: String? 
}
