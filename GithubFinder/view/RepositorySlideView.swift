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
  @Binding var repos: [Repo]

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
        ForEach(self.repos, id: \.self) { repo in
          RepositoryView(repo: repo)
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
  @State static var repos: [Repo] = [Repo(name: "Psycho", full_name: "0", description: "어쩔줄읆 몰라 너를 달래고 매섭게 발로차도 내개 미소짓는 너 어떻게 놓겠어 우리는 아름답고 또 슬픈 사이야 서로를 빛나개해", language: "RedVelvet", stargazers_count: 0)]
  static var previews: some View {
    RepositorySlideView(status: .top, repos: $repos)
  }
}
