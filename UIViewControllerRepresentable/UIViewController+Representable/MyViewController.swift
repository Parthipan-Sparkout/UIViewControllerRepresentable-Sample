//
//  MyViewController.swift
//  UIViewControllerRepresentable
//
//  Created by Sparkout on 12/10/22.
//

import UIKit

class MyViewController: UIViewController {
    // 1
    private var headerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.text = "Hello, Developers"
        label.textAlignment = .center
        return label
    }()
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "I'm a UIViewController from UIKIT Framework. You can use me wherever you want in SwiftUI"
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .left
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.addSubview(headerLabel)
        headerLabel.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 50, left: 20, bottom: 20, right: 20), size: CGSize(width: 0, height: 30))
        view.addSubview(descriptionLabel)
        descriptionLabel.anchor(top: headerLabel.bottomAnchor, leading: headerLabel.leadingAnchor, bottom: nil, trailing: headerLabel.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0))

    }
}
