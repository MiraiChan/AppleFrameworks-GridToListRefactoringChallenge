//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 16.06.26.
//

import SwiftUI

struct XDismissButton: View {
  @Binding var isShowingDetailView: Bool
  
  var body: some View {
    HStack{
      Spacer()
      
      Button {
        isShowingDetailView = false
      } label: {
        Image(systemName: "xmark")
          .foregroundStyle(Color(.label))
          .imageScale(.large)
          .frame(width: 44, height: 44)
      }
    }
    .padding()
  }
}
