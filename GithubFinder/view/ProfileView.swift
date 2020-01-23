//
//  ProfileView.swift
//  GithubFinder
//
//  Created by Choi on 2019/12/30.
//  Copyright © 2019 Choi. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
  var name: String?
  
  var body: some View {
    VStack {
      Information
    }
  }
  
  var Information: some View {
    VStack(alignment: .leading) {
      Text("ChoiHyeongu")
      Text("Email : a11dsd123@gmail.com")
      Text("Being a social innovator, a motivating lecturer")
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
