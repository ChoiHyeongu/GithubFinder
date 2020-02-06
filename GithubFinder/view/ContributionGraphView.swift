//
//  ContributionChart.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/03.
//  Copyright © 2020 Choi. All rights reserved.
//

import SwiftUI

struct ContributionGraphView: View {
  @Binding var contributions: [[Contribution]]

  var body: some View {
    HStack(spacing: AppConfig.DEFAULT_GRAPH_SPACE) {
      ForEach(0 ..< contributions.count, id:\.self) { col in
        VStack(spacing: AppConfig.DEFAULT_GRAPH_SPACE) {
          ForEach(0 ..< self.contributions[col].count, id:\.self) { row in ContributionCellView(self.contributions[col][row].count)
          }
        }
      }
    }
    .padding(15)
    .overlay(RoundedRectangle(cornerRadius: 6)
      .stroke(AppConfig.BORDER_COLOR, lineWidth: 1.5)
    )
  }
}

struct ContributionChartView_Previews: PreviewProvider {
  @State static var contributions = [[Contribution]](repeating: Array(repeating: Contribution(), count: 0), count: 20)
  static var previews: some View {
    ContributionGraphView(contributions: $contributions)
  }
}
