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
  /// - Parameter completion: 컴플리션
  func getUser(_ login: String, _ completion: @escaping (Result<User, Error>) -> Void) {
    request = AF.request("\(AppConfig.BASE_URL)users/\(login)", headers: ["Authorization": AppConfig.API_KEY])
    request?.responseDecodable { (response: DataResponse<User, AFError>) in
      switch response.result {
      case let .success(user):
        completion(.success(user))
      case let .failure(error):
        print("[GithubAPI] getUser error \(error)")
      }
    }
  }
  
  /// 컨트리뷰션 정보 가져오기
  /// - Parameters:
  ///   - username: 유저이름
  ///   - completion: 컴플리션
  func getContributions(_ username: String, _ completion: @escaping (Result<Contributions, Error>) -> Void) {
    request = AF.request("\(AppConfig.CONTRIBUTION_URL)\(username)")
    request?.responseDecodable { (response: DataResponse<Contributions, AFError>) in
      switch response.result {
      case let .success(contributions):
        completion(.success(contributions))
      case let .failure(error):
        print("[GithubAPI] getContributions error \(error)")
      }
    }
  }
}
