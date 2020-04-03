//
//  UserRequest.swift
//  GithubFinder
//
//  Created by Choi on 2020/03/31.
//  Copyright © 2020 Choi. All rights reserved.
//

import Alamofire
import Foundation

class UserRequset: RequestType {
  typealias ResponseType = User

  let method: HTTPMethod = .get
  let path: String
  let parameters: [String: Any]
  let parameterEncoding: ParameterEncoding = URLEncoding.default
  var headers: HTTPHeaders? {
    return [
      "Authorization": AppConfig.API_KEY,
    ]
  }

  private init(login: String) {
    path = "\(AppConfig.BASE_URL)users/\(login)"
    print("PATH: \(path)")
    parameters = [:]
  }
}

extension UserRequset {
  static func user(login: String) -> UserRequset {
    return UserRequset(login: login)
  }
}
