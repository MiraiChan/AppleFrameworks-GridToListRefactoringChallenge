//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 15.06.26.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
  
  let url: URL
  
  typealias UIViewControllerType = SFSafariViewController
  
  func makeUIViewController(context: Context) -> SFSafariViewController {
    SFSafariViewController(url: url)
  }
  
  func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}
