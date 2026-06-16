//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 14.06.26.
//

import SwiftUI

struct FrameworkGridView: View {
  @StateObject var viewModel = FrameworkGridViewModel()
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(MockData.frameworks) { framework in
          NavigationLink(value: framework) {
            FrameworkTitleView (framework: framework)
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
      .navigationDestination(for: Framework.self) { framework in
        FrameworkDetailView(framework: framework)
      }
    }
    .accentColor(Color(.label))
  }
}

#Preview {
  FrameworkGridView()
}
