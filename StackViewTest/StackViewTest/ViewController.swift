//  ViewController.swift
//  StackViewTest
//
//  Created by Emiko Clark on 4/14/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- Properties
    var stackView: UIStackView = {
        // create stackView
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .top
        stack.spacing = 5
        stack.distribution = .fill
        return stack
    }()

    var bkgView: UIView = {
        // create view pinned to stack - so that stack has a bkgcolor of brown
        let rect = UIView()
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.backgroundColor = .purple
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

    // MARK:- View Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // main view has yellow bkgColor
        view.backgroundColor = .yellow
        setupViews()
        setupLabels()
        constrainObjects()
    }

    // MARK:- Setup Methods
    func setupViews() {

        // add labels to rect1 view
        bkgView.addSubview(label1)
        bkgView.addSubview(label2)
        bkgView.addSubview(label3)

        // add remaining views
        bkgView.addSubview(stackView)
        view.addSubview(bkgView)
    }

    func setupLabels() {
        
        // constrain 3 labels in stackView
        label1.anchor(top: stackView.topAnchor, leading: stackView.leadingAnchor, trailing: stackView.trailingAnchor, bottom: nil, padding: .init(top: 40, left: 0, bottom: 0, right: 10))
        
        label2.anchor(top: label1.bottomAnchor, leading: stackView.leadingAnchor, trailing: stackView.trailingAnchor, bottom: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 10))
        
        label3.anchor(top: label2.bottomAnchor, leading: stackView.leadingAnchor, trailing: stackView.trailingAnchor, bottom: stackView.bottomAnchor, padding: .init(top: 20, left: 20, bottom: 0, right: 20))
    }
    
    func constrainObjects() {

        // constrain bkgView to view with padding
        bkgView.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: label3.bottomAnchor, padding: .init(top: 25, left: 0, bottom: 0, right: 0) )
        
        // constrain stackView inside bkgView - so that stackView can have a background color
        stackView.anchor(top: bkgView.topAnchor, leading: bkgView.leadingAnchor, trailing: bkgView.trailingAnchor, bottom: bkgView.bottomAnchor, padding: .init(top: 10, left: 16, bottom: 0, right: 16))
    }
}

// MARK:- Extension
extension UIView {
    // constrain view with constant width and height
    func anchorSize(height: CGFloat, width: CGFloat) {
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }

    // constrain view with optional padding
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

