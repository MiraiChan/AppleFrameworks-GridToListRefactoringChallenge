//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 15.06.26.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
  
  let colums: [GridItem] = [GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())]
}
