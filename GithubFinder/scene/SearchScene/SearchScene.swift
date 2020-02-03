//
//  SearchView.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/30.
//  Copyright © 2019 Choi. All rights reserved.
//

import SwiftUI

struct SearchScene: View {
  @State var name: String = ""

  var body: some View {
    VStack {
      TextField("Enter user name", text: $name)
    }
    .navigationBarTitle("Users")
  }
}

struct SearchScene_Previews: PreviewProvider {
  static var previews: some View {
    SearchScene()
  }
}
