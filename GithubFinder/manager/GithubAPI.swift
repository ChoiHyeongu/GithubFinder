//
//  RestManager.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/31.
//  Copyright © 2019 Choi. All rights reserved.
//

import Alamofire
import Foundation

class GithubAPI {
  static let shared: GithubAPI = GithubAPI()

  private var request: DataRequest? {
    didSet {
      oldValue?.cancel()
    }
  }

  /// 유저 정보 가져오기
  /// - Parameter login: 아이디
  func getUser(_ login: String, _ completion: @escaping (Result<User, Error>) -> Void) {
    request = AF.request("\(Config.BASE_URL)/users/\(login)", headers: ["Authorization": Config.API_KEY])
    request?.responseDecodable { (response: DataResponse<User, AFError>) in
      switch response.result {
      case let .success(user):
        completion(.success(user))
        print("[GithubAPI] getUser: \(user)")
      case let .failure(error):
        print(error)
      }
    }
  }
}
