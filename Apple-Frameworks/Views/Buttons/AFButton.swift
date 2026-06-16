//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 15.06.26.
//

import SwiftUI

struct AFButton: View {
  var title: String
  
  var body: some View {
    Text(title)
      .font(.title2)
      .fontWeight(.semibold)
      .frame(width: 280, height: 50)
      .background(Color.red)
      .foregroundStyle(.white)
      .cornerRadius(10)
  }
}
