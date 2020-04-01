//
//  API.swift
//  GithubFinder
//
//  Created by Choi on 2020/03/30.
//  Copyright © 2020 Choi. All rights reserved.
//

import Alamofire
import Combine
import Foundation

class API {
  var baseURL: String?

  func request<T: RequestType>(request: T) {
    guard let url = URL(string: baseURL!.appending(request.path)) else { return }
    AF.request(url, method: request.method,
               parameters: request.parameters,
               encoding: request.parameterEncoding,
               headers: request.headers)
      .responseJSON { response in
      print(response)
    }
  }
}
