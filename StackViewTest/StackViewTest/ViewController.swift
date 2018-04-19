//
//  ViewController.swift
//  StackViewTest
//
//  Created by Emiko Clark on 4/14/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Properties
    var stack2 = UIStackView()

    var stackView1: UIStackView = {
        // create stackView
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .fill
        stack.spacing = 5
        stack.distribution = .fill
        return stack
    }()
    
    var rect1: UIView = {
        // create view pinned to stack - so that stack has a bkgcolor of brown
        let rect = UIView()
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.backgroundColor = .purple
        return rect
    }()

    var rect2: UIView = {
        // create view pinned to stack - so that stack has a bkgcolor of brown
        let rect = UIView()
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.backgroundColor = .red
        return rect
    }()
    
    var label1: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.backgroundColor = .cyan
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.sizeToFit()
        label.text = "This is a single line"
        return label
    }()
    
    
    var label2: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.backgroundColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false
        label.sizeToFit()
        label.text = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."
        return label
    }()

    var label3: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .darkGray
        label.backgroundColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false
        label.sizeToFit()
        label.textAlignment = .justified
        label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
        return label
    }()
    
    var label4: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.backgroundColor = .cyan
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.sizeToFit()
        label.text = "This is a line"
        return label
    }()
    
    let bkView1: UIView = {
        // create background view
        let bkView = UIView()
        bkView.backgroundColor = UIColor.brown
        bkView.translatesAutoresizingMaskIntoConstraints = false
        return bkView
    }()
    
    // MARK:- View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // main view has yellow bkgColor
        view.backgroundColor = .yellow
        setupViews()
        setupTheRest()
    }
    
    // MARK:- Setup Methods
    func setupViews() {
        
        // add labels to rect1 view
        rect1.addSubview(label1)
        rect1.addSubview(label2)
        rect1.addSubview(label3)
        rect2.addSubview(label4)
        
        // add remaining views
        stackView1.addArrangedSubview(rect1)
        stack2.addArrangedSubview(stackView1)
        stack2.addArrangedSubview(rect2)
        bkView1.addSubview(stack2)
        view.addSubview(bkView1)
        
        // add and configure stack2
        stack2.translatesAutoresizingMaskIntoConstraints = false
        stack2.axis = .horizontal
//        stack2.alignment = .fill
        stack2.spacing = 15
        stack2.distribution = .equalCentering
    }
    
    func setupTheRest() {
        // constrain labels in rect1
        label1.anchor(top: rect1.topAnchor, leading: rect1.leadingAnchor, trailing: rect1.trailingAnchor, bottom: nil)
        
        label2.anchor(top: label1.bottomAnchor, leading: rect1.leadingAnchor, trailing: rect1.trailingAnchor, bottom: nil)
        
        label3.anchor(top: label2.bottomAnchor, leading: rect1.leadingAnchor, trailing: rect1.trailingAnchor, bottom: rect1.bottomAnchor)

        
        // set constraints - rect1
        rect1.anchor(top: stackView1.topAnchor, leading: stackView1.leadingAnchor, trailing: stackView1.trailingAnchor, bottom: label3.bottomAnchor)
        
        // set constraints - stackview1
        stackView1.anchor(top: stack2.topAnchor, leading: nil, trailing: stack2.trailingAnchor, bottom: nil )
        
        // set constraints - bkView so that stack2 has brown background color
        bkView1.anchor(top: stack2.topAnchor, leading: stack2.leadingAnchor, trailing: stack2.trailingAnchor, bottom: stack2.bottomAnchor)
        
        // constrain stack2 and subviews
        label4.anchor(top: rect2.topAnchor, leading: rect2.leadingAnchor, trailing: nil, bottom: nil)
        
        rect2.anchor(top: stack2.topAnchor, leading: stack2.leadingAnchor, trailing: nil, bottom: label4.bottomAnchor)
        
        stack2.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: nil, padding: .init(top: 20, left: 10, bottom: 0, right: 10))
    }
}

// MARK:- Extension
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


//===============
//        // set constraints - rect1
//        rect1.anchor(top: stackView1.topAnchor, leading: stackView1.leadingAnchor, trailing: stackView1.trailingAnchor, bottom: label3.bottomAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
//
//        // set constraints - stackview1
//        stackView1.anchor(top: bkView1.topAnchor, leading: bkView1.leadingAnchor, trailing: bkView1.trailingAnchor, bottom: rect1.bottomAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0) )
//
//        // set constraints - bkView so that stack has brown background color
//        bkView1.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: stackView1.bottomAnchor, padding: .init(top: 25, left: 16, bottom: 0, right: 16))

