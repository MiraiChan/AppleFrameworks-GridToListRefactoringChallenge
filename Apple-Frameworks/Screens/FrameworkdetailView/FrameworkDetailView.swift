//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 15.06.26.
//
import SwiftUI

struct FrameworkDetailView: View {
  
  var framework: Framework
  
  @State private var isShowingSafariView = false
  
  var body: some View {
    VStack {
      
      FrameworkTitleView(framework: framework)
      Text(framework.description)
        .font(.body)
        .padding()
      
      Spacer()
      
      Button {
        isShowingSafariView = true
      } label: {
        AFButton(title: "Learn More")
      }
    }
    .sheet(isPresented: $isShowingSafariView, content: {
      SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://apple.com")!)
    })
  }
}

#Preview {
  FrameworkDetailView(framework: MockData.sampleFramework)
    .preferredColorScheme(.dark)
}
