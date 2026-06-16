//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 15.06.26.
//
import SwiftUI

struct FrameworkDetailView: View {
  
  var framework: Framework
  
  @Binding var isShowingDetailView: Bool
  @State private var isShowingSafariView = false
  
  var body: some View {
    VStack {
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
      
      Spacer()
      
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
  FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    .preferredColorScheme(.dark)
}
