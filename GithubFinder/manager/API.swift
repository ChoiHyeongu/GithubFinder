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

  func request<T: RequestType>(request: T) -> AnyPublisher<User, Error>{
    guard let url = URL(string: baseURL!.appending(request.path)) else { return }
    return AnyPublisher { subscriber in
      AF.request(url, method: request.method,
                                     parameters: request.parameters,
                                     encoding: request.parameterEncoding,
                                     headers: request.headers)
        .response { response in
          switch response.result {
          case let .success(user):
            _ = subscriber.receive
          case let .failure(error):
            print("Error \(error))")
          }
        }
    }
  }
}
