//
//  UserRequest.swift
//  GithubFinder
//
//  Created by Choi on 2020/03/31.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation
import Alamofire

class UserRequset: RequestType {
  typealias ResponseType = User

  let method: HTTPMethod = .get
  var path: String = "/user"
  let parameters: [String: Any]
  let parameterEncoding: ParameterEncoding = URLEncoding.default
  let headers: HTTPHeaders?

  private init(login: String) {
    path.append("\\\(login)")
    headers = [
      "Authorization": AppConfig.API_KEY,
    ]
  }
}

extension UserRequset {
  static func user(login: String) -> UserRequset {
    return UserRequset(login: login)
  }
}
