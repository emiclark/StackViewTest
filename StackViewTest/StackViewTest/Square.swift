//
//  Square.swift
//  StackViewTest
//
//  Created by Emiko Clark on 4/14/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class Square {
    
    var square: UIView = {
        let sq = UIView()
        sq.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        sq.translatesAutoresizingMaskIntoConstraints = false
        sq.backgroundColor = .red
        return sq
    }()
    
}
