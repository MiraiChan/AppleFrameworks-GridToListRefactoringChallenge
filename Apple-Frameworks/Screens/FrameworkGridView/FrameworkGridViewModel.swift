//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 15.06.26.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
  var selectedFramework: Framework? {
    didSet { isShowingDetailView = true }
  }
  @Published var isShowingDetailView = false
}
