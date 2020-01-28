//
//  SearchView.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/30.
//  Copyright © 2019 Choi. All rights reserved.
//

import SwiftUI

struct SearchView: View {
  @State var name: String = ""

  var body: some View {
    VStack {
      TextField("Enter user name", text: $name)
      ProfileView(profileViewModel: ProfileViewModel(login: "Choihyeongu"))
    }
    .navigationBarTitle("Users")
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}
