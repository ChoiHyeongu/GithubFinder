//
//  RequestType.swift
//  GithubFinder
//
//  Created by Choi on 2020/03/30.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation
import Alamofire

protocol RequestType {
  associatedtype ResponseType: Codable

  var method: HTTPMethod { get }
  var path: String { get }
  var parameters: [String: Any] { get }
  var parameterEncoding: ParameterEncoding { get }
  var headers: [String: String]? { get }
}

extension RequestType {
  var headers: [String: String]? {
    return [
      "Content-Type": "application/json",
    ]
  }
}
