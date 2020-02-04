//
//  Color.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/04.
//  Copyright © 2020 Choi. All rights reserved.
//

import Foundation
import SwiftUI

extension Color {
  init(hex: String) {
    let scanner = Scanner(string: hex)
    var rgbValue: UInt64 = 0
    scanner.scanHexInt64(&rgbValue)

    let r = (rgbValue & 0xFF0000) >> 16
    let g = (rgbValue & 0xFF00) >> 8
    let b = rgbValue & 0xFF

    self.init(red: Double(r) / 0xFF, green: Double(g) / 0xFF, blue: Double(b) / 0xFF)
  }
}
