//
//  ContributionCell.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/03.
//  Copyright © 2020 Choi. All rights reserved.
//

import SwiftUI

struct ContributionCellView: View {
  var level: Level

  var body: some View {
    Color(level.rawValue)
      .frame(width: AppConfig.CELL_SIZE, height: AppConfig.CELL_SIZE)
  }
}

struct ContributionCellView_Previews: PreviewProvider {
  static var previews: some View {
    ContributionCellView(level: Level.level1)
  }
}
