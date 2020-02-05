//
//  AppConfig.swift
//  GithubFinder
//
//  Created by Choi on 2020/01/31.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation
import SwiftUI

struct AppConfig {
  /// 기본 아바타 이밎
  static let DEFAULT_AVATAR = "https://avatars2.githubusercontentO.com/u/41419137?s=400&v=4"
  /// API키
  static let API_KEY: String = "2fb22a8cd6848a08d7ecfada8963f13365853bca"
  /// 기본 URL
  static let BASE_URL: String = "https://api.github.com"
  /// 기본 배경색
  static let GITHUB_BACKGROUND: Color = Color(red: 27 / 255, green: 31 / 255, blue: 35 / 255)
  static let BORDER_COLOR: Color = Color("gray")
  /// 컨트리뷰션 그래프 셀 사이즈
  static let CELL_SIZE = CGFloat(integerLiteral: 15)
}
