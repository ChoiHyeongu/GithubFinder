//
//  ContributionCell.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/03.
//  Copyright © 2020 Choi. All rights reserved.
//

import SwiftUI

struct ContributionCellView: View {
  var level: Level = Level.level5

  init(_ count: Int) {
    print("count: \(count)")
    switch count {
    case 1 ... 24:
      level = .level2
    case 25 ... 49:
      level = .level3
    case 50 ... 74:
      level = .level4
    case 75 ... 10000:
      level = .level5
    default:
      level = .level1
    }
  }

  var body: some View {
    Color(level.rawValue)
      .frame(width: AppConfig.CELL_SIZE, height: AppConfig.CELL_SIZE)
  }
}

struct ContributionCellView_Previews: PreviewProvider {
  static var previews: some View {
    ContributionCellView(0)
  }
}
