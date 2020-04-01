//
//  RequestType.swift
//  GithubFinder
//
//  Created by Choi on 2020/03/30.
//  Copyright © 2020 Choi. All rights reserved.
//

import Alamofire
import Foundation

protocol RequestType {
  associatedtype ResponseType: Codable

  var method: HTTPMethod { get }
  var path: String { get }
  var parameters: [String: Any] { get }
  var parameterEncoding: ParameterEncoding { get }
  var headers: HTTPHeaders? { get }
}
