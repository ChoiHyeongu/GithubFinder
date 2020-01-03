//
//  RestManager.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/31.
//  Copyright © 2019 Choi. All rights reserved.
//

import Foundation
import Alamofire

class RestManager {
  static let shared: RestManager = RestManager()
  
  private var request: DataRequest? {
    didSet{
      oldValue?.cancel()
    }
  }
  
  /// UserList 받아오기
  func getUser(login: String) -> User{
    var user: User?
    self.request = AF.request("\(Config.baseURL)/users/\(login)", headers: ["Authorization":Config.API_KEY])
    self.request?.responseDecodable { (response: DataResponse<User, AFError>) in
      switch response.result {
      case .success(let data):
        user = data
        print(user!)
      case .failure(let error):
        print(error)
      }
    }
    
    return user!
  }
  
  /// Name을 통해 user가져오기
  /// - Parameter name: Srring
  func getUserByName(completionHandler: @escaping (Result<User, Error>) -> Void, _ name: String) {
    self.request = AF.request("\(Config.baseURL)/users")
    self.request?.responseDecodable { (response: DataResponse<User, AFError>) in
      switch response.result {
      case .success(let user):
        completionHandler(.success(user))
        print(user)
      case .failure(let error):
        completionHandler(.failure(error))
      }
    }
  }
}
