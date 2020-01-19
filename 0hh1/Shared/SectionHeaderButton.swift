//
//  SectionHeaderButton.swift
//  0hh1
//
//  Created by Cole Riggle on 1/18/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class SectionHeaderLabel: UILabel {

    convenience init(title: String, size: CGFloat) {
        self.init()
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont(name: "lobster", size: 80) ?? .systemFont(ofSize: 80)
        // UILabel(text: "Oh hi", font: UIFont(name: "lobster", size: 80) ?? .systemFont(ofSize: 80))
        self.setTitleColor(.systemRed, for: .normal)        
    }
    
}
