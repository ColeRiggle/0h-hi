//
//  SectionHeaderLabel.swift
//  0hh1
//
//  Created by Cole Riggle on 1/18/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class SectionHeaderLabel: UILabel {

    convenience init(text: String, size: CGFloat) {
        self.init()
        self.text = text
        self.font = UIFont(name: "Lobster 1.4", size: size) ?? .systemFont(ofSize: size)
        self.textColor = .white
//        self.titleLabel?.font = UIFont(name: "lobster", size: 80) ?? .systemFont(ofSize: 80)
//        // UILabel(text: "Oh hi", font: UIFont(name: "lobster", size: 80) ?? .systemFont(ofSize: 80))
//        self.setTitleColor(.systemRed, for: .normal)
    }
    
}
