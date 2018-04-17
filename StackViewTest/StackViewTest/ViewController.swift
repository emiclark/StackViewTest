//
//  ViewController.swift
//  StackViewTest
//
//  Created by Emiko Clark on 4/14/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stackView1: UIStackView!
    var stackView2: UIStackView!
    
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

        let sq4 = UIView()
        sq4.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        sq4.translatesAutoresizingMaskIntoConstraints = false
        sq4.backgroundColor = UIColor.blue
        
        let sq5 = UIView()
        sq5.frame = CGRect(x: 0, y: 0, width: 250, height: 150)
        sq5.translatesAutoresizingMaskIntoConstraints = false
        sq5.backgroundColor = UIColor.red
        
        
        // create stackViews
        stackView1 = UIStackView()
        stackView2 = UIStackView()

        // allow autolayout
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView2.translatesAutoresizingMaskIntoConstraints = false

        // add views to stack1
        stackView1.addArrangedSubview(sq1)
        stackView1.addArrangedSubview(sq2)
        stackView1.addArrangedSubview(sq3)

        // add views to stackview2
        stackView2.addArrangedSubview(sq4)
        stackView2.addArrangedSubview(sq5)
  
        // add stackViews to main view
        view.addSubview(stackView1)
        view.addSubview(stackView2)

        // stackview1: set parameters
        stackView1.axis = .vertical
        stackView1.spacing = 5
        stackView1.distribution = .fillEqually
        stackView1.alignment = .fill
        
        // stackview1: set constraints
        stackView1.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: nil, padding: .init(top: 80, left: 16, bottom: 16, right: 16))
        stackView1.anchorSize(height: 250, width: 0)
        
        // set parameters for stack view 2
        stackView2.axis = .horizontal
        stackView2.spacing = 30
        stackView2.distribution = .fillProportionally
        stackView2.alignment = .fill
        
        // stackview2: set constraints
        stackView2.anchor(top: stackView1.bottomAnchor, leading: stackView1.leadingAnchor, trailing: stackView1.trailingAnchor, bottom: view.bottomAnchor, padding: .init(top: 20, left: 0, bottom: 20, right: 0))
        
        stackView2.anchorSize(height: 200, width: 0)
    }
}

extension UIView {
    
    func anchorSize(height: CGFloat, width: CGFloat) {
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, padding: UIEdgeInsets = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
    }
}

