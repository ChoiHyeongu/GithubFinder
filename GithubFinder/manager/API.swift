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
  func request<T: RequestType>(request: T) -> AnyPublisher<T.ResponseType, Error> {
    return AF.request(AppConfig.BASE_URL.appending(request.path))
      .responseJSON { response in
        print(response)
      }
    .data!
      .publisher
  }
}
