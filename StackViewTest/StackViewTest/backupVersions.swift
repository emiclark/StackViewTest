//====== backup b4 creating nested stacks =======================
////
////  backupVersions.swift
////  StackViewTest
////
////  Created by Emiko Clark on 4/16/18.
////  Copyright © 2018 Emiko Clark. All rights reserved.
////
//
////import Foundation
//
////
////  ViewController.swift
////  StackViewTest
////
////  Created by Emiko Clark on 4/14/18.
////  Copyright © 2018 Emiko Clark. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    //MARK:- Properties
//    var stackView1: UIStackView = {
//        // create stackView
//        let stack = UIStackView()
//        stack.translatesAutoresizingMaskIntoConstraints = false
//        stack.axis = .vertical
//        stack.alignment = .top
//        stack.spacing = 5
//        stack.distribution = .fill
//        return stack
//    }()
//
//    var rect1: UIView = {
//        // create view pinned to stack - so that stack has a bkgcolor of brown
//        let rect = UIView()
//        rect.translatesAutoresizingMaskIntoConstraints = false
//        rect.backgroundColor = .purple
//        return rect
//    }()
//
//    var rect2: UIView = {
//        // create view pinned to stack - so that stack has a bkgcolor of brown
//        let rect = UIView()
//        rect.translatesAutoresizingMaskIntoConstraints = false
//        rect.backgroundColor = .red
//        return rect
//    }()
//
//    var label1: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.font = UIFont.boldSystemFont(ofSize: 22)
//        label.backgroundColor = .cyan
//        label.textColor = .darkGray
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.sizeToFit()
//        label.text = "This is a single line"
//        return label
//    }()
//
//
//    var label2: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.font = UIFont.systemFont(ofSize: 20)
//        label.textColor = .black
//        label.backgroundColor = .cyan
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.sizeToFit()
//        label.text = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."
//        return label
//    }()
//
//    var label3: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.font = UIFont.systemFont(ofSize: 18)
//        label.textColor = .darkGray
//        label.backgroundColor = .cyan
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.sizeToFit()
//        label.textAlignment = .justified
//        label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
//        return label
//    }()
//
//    var label4: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.font = UIFont.boldSystemFont(ofSize: 22)
//        label.backgroundColor = .cyan
//        label.textColor = .darkGray
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.sizeToFit()
//        label.text = "This is a line"
//        return label
//    }()
//
//    let bkView1: UIView = {
//        // create background view
//        let bkView = UIView()
//        bkView.backgroundColor = UIColor.brown
//        bkView.translatesAutoresizingMaskIntoConstraints = false
//        return bkView
//    }()
//
//    // MARK:- View Methods
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // main view has yellow bkgColor
//        view.backgroundColor = .yellow
//        setupViews()
//        constrainObjects()
//        setupLabels()
//    }
//
//    // MARK:- Setup Methods
//    func setupViews() {
//
//        // add labels to rect1 view
//        rect1.addSubview(label1)
//        rect1.addSubview(label2)
//        rect1.addSubview(label3)
//
//        // add remaining views
//        stackView1.addArrangedSubview(rect1)
//        bkView1.addSubview(stackView1)
//        view.addSubview(bkView1)
//
//        // add and configure stack2
//        let stack2 = UIStackView()
//        rect2.addSubview(label4)
//        stack2.addArrangedSubview(rect2)
//        stack2.translatesAutoresizingMaskIntoConstraints = false
//        stack2.axis = .horizontal
//        stack2.alignment = .top
//        stack2.spacing = 15
//        stack2.distribution = .fill
//
//        // constrain stack2
//
//    }
//
//    func constrainObjects() {
//
//        // set constraints - bkView so that stack has brown background color
//        bkView1.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: stackView1.bottomAnchor, padding: .init(top: 25, left: 16, bottom: 0, right: 16))
//
//        // set constraints - stackview1
//        stackView1.anchor(top: bkView1.topAnchor, leading: bkView1.leadingAnchor, trailing: bkView1.trailingAnchor, bottom: rect1.bottomAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0) )
//
//        // set constraints - rec1
//        rect1.anchor(top: stackView1.topAnchor, leading: stackView1.leadingAnchor, trailing: stackView1.trailingAnchor, bottom: label3.bottomAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
//    }
//
//    func setupLabels() {
//        // constrain labels in rect1
//        label1.anchor(top: rect1.topAnchor, leading: rect1.leadingAnchor, trailing: rect1.trailingAnchor, bottom: nil, padding: .init(top: 30, left: 0, bottom: 50, right: 10))
//
//        label2.anchor(top: label1.bottomAnchor, leading: rect1.leadingAnchor, trailing: rect1.trailingAnchor, bottom: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 10))
//
//        label3.anchor(top: label2.bottomAnchor, leading: rect1.leadingAnchor, trailing: rect1.trailingAnchor, bottom: rect1.bottomAnchor, padding: .init(top: 20, left: 20, bottom: 0, right: 20))
//    }
//}
//
//// MARK:- Extension
//extension UIView {
//
//    func anchorSize(height: CGFloat, width: CGFloat) {
//        heightAnchor.constraint(equalToConstant: height).isActive = true
//        widthAnchor.constraint(equalToConstant: width).isActive = true
//    }
//
//    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, padding: UIEdgeInsets = .zero) {
//
//        translatesAutoresizingMaskIntoConstraints = false
//
//        if let top = top {
//            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
//        }
//
//        if let leading = leading {
//            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
//        }
//
//        if let trailing = trailing {
//            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
//        }
//
//        if let bottom = bottom {
//            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
//        }
//    }
//}
//


//======= backup 4/18/18 - 3 vertical stacks - b4 simpifying a single stack
////
////  ViewController.swift
////  StackViewTest
////
////  Created by Emiko Clark on 4/14/18.
////  Copyright © 2018 Emiko Clark. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    var stackView1: UIStackView!
//    var stackView2: UIStackView!
//    var rec1: UIView!
//    var rec2: UIView!
//    var rec3: UIView!
//    var rec4: UIView!
//    var rec5: UIView!
//
//    var label1: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.backgroundColor = .cyan
//        label.textColor = .black
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.sizeToFit()
//        return label
//    }()
//
//
//    var label2: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.font = UIFont.systemFont(ofSize: 20)
//        label.textColor = .black
//        label.backgroundColor = .cyan
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.sizeToFit()
//        return label
//    }()
//
//    var label3: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.font = UIFont.systemFont(ofSize: 18)
//        label.textColor = .darkGray
//        label.backgroundColor = .cyan
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.sizeToFit()
//        label.textAlignment = .justified
//        return label
//    }()
//
//    // MARK:- View Methods
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .yellow
//        setupViews()
//        setupStacks()
//        setupLabels()
//    }
//
//    // MARK:- Setup Methods
//    func setupViews() {
//        rec1 = UIView()
//        rec1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        rec1.translatesAutoresizingMaskIntoConstraints = false
//        rec1.backgroundColor = .purple
//
//        rec2 = UIView()
//        rec2.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
//        rec2.translatesAutoresizingMaskIntoConstraints = false
//        rec2.backgroundColor = .brown
//
//        rec3 = UIView()
//        rec3.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
//        rec3.translatesAutoresizingMaskIntoConstraints = false
//        rec3.backgroundColor = .green
//
//        rec4 = UIView()
//        rec4.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        rec4.translatesAutoresizingMaskIntoConstraints = false
//        rec4.backgroundColor = UIColor.blue
//
//        rec5 = UIView()
//        rec5.frame = CGRect(x: 0, y: 0, width: 250, height: 150)
//        rec5.translatesAutoresizingMaskIntoConstraints = false
//        rec5.backgroundColor = UIColor.red
//    }
//
//    func setupStacks() {
//        // create stackViews
//        stackView1 = UIStackView()
//        stackView2 = UIStackView()
//
//        // allow autolayout
//        stackView1.translatesAutoresizingMaskIntoConstraints = false
//        stackView2.translatesAutoresizingMaskIntoConstraints = false
//
//        // add views to stack1
//        stackView1.addArrangedSubview(rec1)
//        stackView1.addArrangedSubview(rec2)
//        stackView1.addArrangedSubview(rec3)
//
//        // add views to stackview2
//        stackView2.addArrangedSubview(rec4)
//        stackView2.addArrangedSubview(rec5)
//
//        // add stackViews to main view
//        view.addSubview(stackView1)
//        view.addSubview(stackView2)
//
//        // stackview1: set parameters
//        // FIXME: set stackView1 parameter to allow stack to expand as content grows
//        stackView1.axis = .vertical
//        stackView1.spacing = 5
//        stackView1.distribution = .fillProportionally
//        stackView1.alignment = .fill
//
//        // stackview1: set constraints
//        stackView1.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: nil, padding: .init(top: 80, left: 16, bottom: 16, right: 16))
//
//        // set parameters for stack view 2
//        stackView2.axis = .horizontal
//        stackView2.spacing = 30
//        stackView2.distribution = .fillProportionally
//        stackView2.alignment = .fill
//
//        // stackview2: set constraints
//        stackView2.anchor(top: stackView1.bottomAnchor, leading: stackView1.leadingAnchor, trailing: stackView1.trailingAnchor, bottom: view.bottomAnchor, padding: .init(top: 20, left: 0, bottom: 20, right: 0))
//
//    }
//
//    func setupLabels() {
//        // create labels
//        let label1 = self.label1
//        let label2 = self.label2
//        let label3 = self.label3
//
//        // set label content
//        label1.text = "this is a single line"
//        label2.text = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."
//        label3.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsu"
//
//        // add to view
//        rec1.addSubview(label1)
//        rec1.addSubview(label2)
//        rec1.addSubview(label3)
//
//        // constrain labels
//        label1.anchor(top: rec1.topAnchor, leading: rec1.leadingAnchor, trailing: rec1.trailingAnchor, bottom: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
//
//        label2.anchor(top: label1.bottomAnchor, leading: rec1.leadingAnchor, trailing: rec1.trailingAnchor, bottom: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0))
//
//        label3.anchor(top: label2.bottomAnchor, leading: rec2.leadingAnchor, trailing: rec2.trailingAnchor, bottom: nil, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
//    }
//}
//
//// MARK:- Extension
//extension UIView {
//
//    func anchorSize(height: CGFloat, width: CGFloat) {
//        heightAnchor.constraint(equalToConstant: height).isActive = true
//        widthAnchor.constraint(equalToConstant: width).isActive = true
//    }
//
//    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, padding: UIEdgeInsets = .zero) {
//
//        translatesAutoresizingMaskIntoConstraints = false
//
//        if let top = top {
//            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
//        }
//
//        if let leading = leading {
//            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
//        }
//
//        if let trailing = trailing {
//            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
//        }
//
//        if let bottom = bottom {
//            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
//        }
//    }
//}
//

////======= backup 4/16/18 - b4 creating extension to uiview
////
////  ViewController.swift
////  StackViewTest
////
////  Created by Emiko Clark on 4/14/18.
////  Copyright © 2018 Emiko Clark. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//    
//    var stackView: UIStackView!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .yellow
//        
//        let sq1 = UIView()
//        sq1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        sq1.translatesAutoresizingMaskIntoConstraints = false
//        sq1.backgroundColor = .brown
//        
//        let sq2 = UIView()
//        sq2.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        sq2.translatesAutoresizingMaskIntoConstraints = false
//        sq2.backgroundColor = .cyan
//        
//        stackView = UIStackView()
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
//        stackView.backgroundColor = .red
//        
//        stackView.addArrangedSubview(sq1)
//        stackView.addArrangedSubview(sq2)
//        
//        stackView.spacing = 50.0
//        stackView.axis = .vertical
//        stackView.distribution = .fillEqually
//        stackView.alignment = .fill
//        view.addSubview(stackView)
//        
//        stackView.isLayoutMarginsRelativeArrangement = true
//        //        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 16, bottom: 8, right: 16)
//        //
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
//            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//            ])
//        
//    }
//    
//}
//
//class CustomView: UIView {
//    var height = 100.0
//    
//    func intrinsicContentSize() -> CGSize {
//        return CGSize(width: 1.0, height: height)
//    }
//}

//================================================================
////
////  ViewController.swift
////  StackViewTest
////
////  Created by Emiko Clark on 4/14/18.
////  Copyright © 2018 Emiko Clark. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//    
//    var stackView: UIStackView!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .yellow
//        
//        let sq1 = UIView()
//        sq1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        sq1.translatesAutoresizingMaskIntoConstraints = false
//        sq1.backgroundColor = .brown
//        
//        let sq2 = UIView()
//        sq2.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        sq2.translatesAutoresizingMaskIntoConstraints = false
//        sq2.backgroundColor = .cyan
//        
//        stackView = UIStackView()
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
//        stackView.backgroundColor = .red
//        
//        stackView.addArrangedSubview(sq1)
//        stackView.addArrangedSubview(sq2)
//        
//        stackView.spacing = 50.0
//        stackView.axis = .vertical
//        stackView.distribution = .fillEqually
//        stackView.alignment = .fill
//        view.addSubview(stackView)
//        
//        stackView.isLayoutMarginsRelativeArrangement = true
//        //        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 16, bottom: 8, right: 16)
//        //
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
//            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//            ])
//        
//    }
//    
//}
//
//class CustomView: UIView {
//    var height = 100.0
//
//    func intrinsicContentSize() -> CGSize {
//        return CGSize(width: 1.0, height: height)
//    }
//}


// backup vc ==============
//import UIKit
//
//class ViewController: UIViewController {
//
//    static var sq1: UIView = {
//        let sq = UIView()
//        sq.backgroundColor = .red
//        sq.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        sq.translatesAutoresizingMaskIntoConstraints = false
//        return sq
//    }()
//
//    static var sq2: UIView = {
//        let sq = UIView()
//        sq.backgroundColor = .brown
//        sq.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        sq.translatesAutoresizingMaskIntoConstraints = false
//        return sq
//    }()
//
//    var stack: UIStackView = {
//        let s = UIStackView(arrangedSubviews: [sq1, sq2])
//        s.frame = CGRect(x: 0, y: 0, width: 250 , height: 250)
//        s.backgroundColor = UIColor.yellow
//        s.translatesAutoresizingMaskIntoConstraints = false
//        return s
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .green
//
//        stack = UIStackView(arrangedSubviews: [ViewController.sq1, ViewController.sq2])
//        view.addSubview(stack)
//        stack.translatesAutoresizingMaskIntoConstraints = false
//        stack.axis = .vertical
//        stack.distribution = .equalSpacing
//
//        NSLayoutConstraint.activate([
//            stack.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
//            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            stack.heightAnchor.constraint(equalToConstant: 250)
//            ])
//
//    }
//}
//===============

//        setupConstraints()
//    }

//    func setupConstraints() {
//
//        stack!.axis = .vertical
//        stack!.distribution = .equalSpacing
//
//        NSLayoutConstraint.activate([
//            (stack?.topAnchor.constraint(equalTo: view.topAnchor, constant: 50))!,
//            (stack?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50))!,
//            (stack?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50))!,
//            (stack?.heightAnchor.constraint(equalToConstant: 200))!
//        ])
//
//    }

//}


