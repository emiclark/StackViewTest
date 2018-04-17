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
        
        let rec1 = UIView()
        rec1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        rec1.translatesAutoresizingMaskIntoConstraints = false
        rec1.backgroundColor = .brown
        
        let rec2 = UIView()
        rec2.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        rec2.translatesAutoresizingMaskIntoConstraints = false
        rec2.backgroundColor = .cyan
        
        let rec3 = UIView()
        rec3.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        rec3.translatesAutoresizingMaskIntoConstraints = false
        rec3.backgroundColor = .green

        let rec4 = UIView()
        rec4.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        rec4.translatesAutoresizingMaskIntoConstraints = false
        rec4.backgroundColor = UIColor.blue
        
        let rec5 = UIView()
        rec5.frame = CGRect(x: 0, y: 0, width: 250, height: 150)
        rec5.translatesAutoresizingMaskIntoConstraints = false
        rec5.backgroundColor = UIColor.red
        
        
        // create stackViews
        stackView1 = UIStackView()
        stackView2 = UIStackView()

        // allow autolayout
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView2.translatesAutoresizingMaskIntoConstraints = false

        // add views to stack1
        stackView1.addArrangedSubview(rec1)
        stackView1.addArrangedSubview(rec2)
        stackView1.addArrangedSubview(rec3)

        // add views to stackview2
        stackView2.addArrangedSubview(rec4)
        stackView2.addArrangedSubview(rec5)
  
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

