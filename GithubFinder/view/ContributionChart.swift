//
//  ContributionChart.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/03.
//  Copyright © 2020 Choi. All rights reserved.
//

import SwiftUI

struct ContributionChart: View {
  var body: some View {
    HStack {
      ContributionCell()
      ContributionCell()
      ContributionCell()
      ContributionCell()
      ContributionCell()
      ContributionCell()
    }
  }
}

struct ContributionChart_Previews: PreviewProvider {
  static var previews: some View {
    ContributionChart()
  }
}
