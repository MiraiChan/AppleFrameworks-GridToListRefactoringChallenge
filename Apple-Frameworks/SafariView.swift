//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Almira Khafizova on 15.06.26.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
  
  func makeUIViewController(context: UIViewRepresentableContext<SafariView>) -> SFSafariViewController{
    SFSafariViewController(url: url)
  }
  
  func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewRepresentableContext<SafariView>) {}
}
