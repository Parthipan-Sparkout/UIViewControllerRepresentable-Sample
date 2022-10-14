//
//  MyView.swift
//  UIViewControllerRepresentable
//
//  Created by Sparkout on 14/10/22.
//

import SwiftUI

struct MyView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = MyViewController
    
    func makeUIViewController(context: Context) -> MyViewController {
        let vc = MyViewController()
        // Do some configurations here if needed.
        return vc
    }
    
    func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }
}
