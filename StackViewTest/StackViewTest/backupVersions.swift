//
//  backupVersions.swift
//  StackViewTest
//
//  Created by Emiko Clark on 4/16/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import Foundation

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


