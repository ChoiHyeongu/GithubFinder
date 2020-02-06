//
//  ContributionChart.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/03.
//  Copyright © 2020 Choi. All rights reserved.
//

import SwiftUI

struct ContributionGraphView: View {
  @ObservedObject var graphViewModel = ContributionGraphViewModel()

  var body: some View {
    HStack(spacing: AppConfig.DEFAULT_GRAPH_SPACE) {
      ForEach(0 ..< graphViewModel.contributions.count, id:\.self) { col in
        VStack(spacing: AppConfig.DEFAULT_GRAPH_SPACE) {
          ForEach(0 ..< self.graphViewModel.contributions[col].count, id:\.self) { row in ContributionCellView(self.graphViewModel.contributions[col][row].count)
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
  static let contributions = [[Contribution]](repeating: Array(repeating: Contribution(), count: 0), count: 20)
  static var previews: some View {
    ContributionGraphView()
  }
}
