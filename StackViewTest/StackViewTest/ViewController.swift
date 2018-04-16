//
//  ViewController.swift
//  StackViewTest
//
//  Created by Emiko Clark on 4/14/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stackView: UIStackView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        let sq1 = UIView()
        sq1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        sq1.translatesAutoresizingMaskIntoConstraints = false
        sq1.backgroundColor = .brown
        
        let sq2 = UIView()
        sq2.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        sq2.translatesAutoresizingMaskIntoConstraints = false
        sq2.backgroundColor = .cyan
        
        let sq3 = UIView()
        sq3.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        sq3.translatesAutoresizingMaskIntoConstraints = false
        sq3.backgroundColor = .green
        
        // stacks
        stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .red

        stackView.addArrangedSubview(sq1)
        stackView.addArrangedSubview(sq2)
        stackView.addArrangedSubview(sq3)
        
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        view.addSubview(stackView)
        
        stackView.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.bottomAnchor, padding: .init(top: 80, left: 16, bottom: 16, right: 16))
    }
}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, trailing: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, padding: UIEdgeInsets = .zero ) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
    }
}

