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
  /// 기본 아바타
  static let DEFAULT_AVATAR = "https://avatars2.githubusercontent.com/u/35494666?v=4"
  /// API 키
  static let API_KEY: String = "2fb22a8cd6848a08d7ecfada8963f13365853bca"
  /// 기본 URL
  static let BASE_URL: String = "https://api.github.com/"
  /// 컨트리뷰선 API URL
  static let CONTRIBUTION_URL = "https://github-contributions-api.now.sh/v1/"
  /// 깃허브 기본 배경색
  static let GITHUB_BACKGROUND: Color = Color(red: 27 / 255, green: 31 / 255, blue: 35 / 255)
  static let BORDER_COLOR: Color = Color("gray")
  /// 컨트리뷰션 그래프 셀 사이즈
  static let CELL_SIZE = CGFloat(integerLiteral: 15)
  /// 컨트리뷰션 그래프 간격
  static let DEFAULT_GRAPH_SPACE = CGFloat(integerLiteral: 3)
  /// 컨트리뷰션베열에서 나타낼  범위
  static let GRAPH_RANGE = Range(330...469)
  /// 표시할 언어 목록
  static let LANGUAGE: [Language] = [.all, .swift, .java, .javascript, .kotlin, .python]
  /// 표시할 언어 목록 문자열
  static let LANGUAGE_STRING: [String] = [Language.all.rawValue, Language.swift.rawValue, Language.java.rawValue, Language.javascript.rawValue, Language.kotlin.rawValue, Language.python.rawValue]
}
