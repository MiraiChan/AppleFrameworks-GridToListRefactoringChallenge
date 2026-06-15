//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 15.06.26.
//
import SwiftUI

struct FrameworkDetailView: View {
  
  var framework: Framework
  
  var body: some View {
    VStack {
      Spacer()
      FrameworkTitleView(framework: framework)
      Text(framework.description)
        .font(.body)
        .padding()
      
      Spacer()
      
      Button {
        
      } label: {
        AFButton(title: "Learn More")
      }
    }
  }
}

#Preview {
  FrameworkDetailView(framework: MockData.sampleFramework)
}
