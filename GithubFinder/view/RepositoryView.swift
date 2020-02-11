//
//  RepositoryView.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/11.
//  Copyright © 2020 Choi. All rights reserved.
//

import SwiftUI

struct RepositoryView: View {
  var repo: Repo

  var body: some View {
    VStack(alignment: .leading) {
      TitleView
      DescriptionView
      LanguageView
        .padding(.top, -10)
    }
    .frame(maxWidth: .infinity, alignment: .leading)
    .padding()
  }

  var TitleView: some View {
    Text(repo.name)
      .font(.subheadline)
      .bold()
      .foregroundColor(.blue)
  }

  var DescriptionView: some View {
    Text(repo.description ?? "")
      .font(.caption)
      .fontWeight(.light)
      .padding(.top, 5)
  }

  var LanguageView: some View {
    HStack {
      Circle()
        .foregroundColor(Color(repo.language))
        .frame(width: 11, height: 11)
      Text(repo.language)
        .font(.footnote)
        .fontWeight(.light)
        .padding(.leading, -3)
    }
  }

  func setLanguageColor(language: Language) -> String {
    switch language {
    case .swift:
      return "swift"
    case .java:
      return "java"
    case .javascript:
      return "javascript"
    case .python:
      return "python"
    case .kotlin:
      return "python"
    case .all:
      return "swift"
    }
  }
}

struct RepositoryView_Previews: PreviewProvider {
  static var previews: some View {
    RepositoryView(repo: Repo(name: "GithubFinder", full_name: "GithubFinder", description: "This is preview", language: "Swift", stargazers_count: 0))
  }
}
