//
//  ContributionChart.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/03.
//  Copyright © 2020 Choi. All rights reserved.
//

import SwiftUI

struct ContributionChartView: View {
  var body: some View {
    VStack {
      Col
      Col
      Col
      Col
      Col
      Col
      Col
    }
    .padding(15)
    .overlay(RoundedRectangle(cornerRadius: 5)
    .stroke(AppConfig.BORDER_COLOR)
    )
  }

  var Col: some View {
    HStack {
      HStack {
        ContributionCellView(level: Level.level1)
        ContributionCellView(level: Level.level3)
        ContributionCellView(level: Level.level2)
        ContributionCellView(level: Level.level4)
        ContributionCellView(level: Level.level2)
        ContributionCellView(level: Level.level2)
        ContributionCellView(level: Level.level3)
      }
      HStack {
        ContributionCellView(level: Level.level1)
        ContributionCellView(level: Level.level3)
        ContributionCellView(level: Level.level2)
        ContributionCellView(level: Level.level4)
        ContributionCellView(level: Level.level2)
        ContributionCellView(level: Level.level2)
        ContributionCellView(level: Level.level2)
      }
    }
  }
}

struct ContributionChartView_Previews: PreviewProvider {
  static var previews: some View {
    ContributionChartView()
  }
}
