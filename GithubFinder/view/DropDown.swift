//
//  DropDown.swift
//  GithubFinder
//
//  Created by Choi on 2020/02/07.
//  Copyright © 2020 Choi. All rights reserved.
//

import SwiftUI

struct DropDown: View {
  let languages: [Language] = [.all, .swift, .java, .javascript, .kotlin, .python]
  //let types: [Type] = [.all, .publicRepo, .privateRepo]
  @State var expand = false
  @State var selectItem: Language = Language.all

  var body: some View {
    VStack {
      HStack {
        Text("Type: \(selectItem.rawValue)")
          .fontWeight(.heavy)
          .font(.footnote)
        Image(systemName: expand ? "chevron.up" : "chevron.down").resizable().frame(width: 13, height: 6)
      }
      .padding(7)
      .foregroundColor(.secondary)
      .background(Color(.secondarySystemBackground))
      .cornerRadius(5)
      if expand {
        ForEach(languages, id: \.self) { index in
          HStack {
            if index == self.selectItem { Image(systemName: "checkmark") }
            Button(action: { self.selectItem = index }) {
              Text(index.rawValue)
            }
            .frame(width: 80, alignment: .leading)
          }
          .padding()
          .foregroundColor(.secondary)
          .background(Color(.secondarySystemGroupedBackground))
          .cornerRadius(5)
        }
      }
    }
    .padding(7)
    .cornerRadius(7)
    .onTapGesture {
      self.expand.toggle()
    }
  }
}

struct DropDown_Previews: PreviewProvider {
  static var previews: some View {
    DropDown(selectItem: .all)
  }
}
