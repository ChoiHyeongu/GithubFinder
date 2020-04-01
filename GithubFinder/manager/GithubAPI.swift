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
  
  private var api = API()
  private var request: DataRequest?
  private var reachability: NetworkReachabilityManager!

  private init() { monitorReachability() }

  private func monitorReachability() {
    reachability = NetworkReachabilityManager(host: "www.apple.com")
    reachability.startListening { status in
      print("Reachability Status Changed: \(status)")
    }
  }

  /// 유저 정보 가져오기
  /// - Parameter login: 아이디
  /// - Parameter completion: 컴플리션
  func getUser(_ login: String) {
    self.api.baseURL = AppConfig.BASE_URL
    self.api.request(request: UserRequset.user(login: login))
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

  func getUserRepos(_ username: String, _ completion: @escaping (Result<[Repo], Error>) -> Void) {
    request = AF.request("\(AppConfig.BASE_URL)users/\(username)/repos")
    request?.responseDecodable { (response: DataResponse<[Repo], AFError>) in
      switch response.result {
      case let .success(repos):
        completion(.success(repos))
      case let .failure(error):
        print("[GithubAPI] gerUserRepos error \(error)")
      }
    }
  }
}
