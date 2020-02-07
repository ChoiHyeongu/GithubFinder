//
//  RepositorySlideView.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/07.
//  Copyright © 2020 Choi. All rights reserved.
//

import SlideOverCard
import SwiftUI

struct RepositorySlideView: View {
  @State var status: CardPosition = .bottom
  @State var searchText: String = ""

  var body: some View {
    SlideOverCard($status) {
      VStack {
        Text("Repositories")
          .fontWeight(.semibold)
        self.SearchBar
        HStack {
          DropDown()
            .frame(width: 395, alignment: .leading)
        }
      }
    }
  }

  var SearchBar: some View {
    HStack {
      TextField("Find a repositories...", text: $searchText)
        .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 0))
        .foregroundColor(.secondary)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10.0)
        .padding(.horizontal, 10)
    }
    .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
  }
}

struct RepositorySlideView_Previews: PreviewProvider {
  static var previews: some View {
    RepositorySlideView(status: .top)
  }
}
