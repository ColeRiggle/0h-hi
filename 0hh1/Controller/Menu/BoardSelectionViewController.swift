//
//  GameSelectionViewController.swift
//  0hh1
//
//  Created by Cole Riggle on 1/18/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//
//
import UIKit

class BoardSelectionViewController: RoutedViewController {
    
    let selectionLabel = UILabel(text: "Select a board size", font: UIFont(name: "Lobster 1.4", size: 10) ?? .systemFont(ofSize: 80))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        view.fillSuperview()
    }
    
}
