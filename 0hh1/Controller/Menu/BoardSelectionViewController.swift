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
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "back icon")?.withTintColor(.white), for: .normal)
        return button
    }()
    
    let selectionLabel = SectionHeaderLabel(text: "Choose a board size", size: 40)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        view.fillSuperview()
        
        view.isUserInteractionEnabled = true
        
        view.addSubview(backButton)
        backButton.anchor(top: view.layoutMarginsGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 15, left: 15, bottom: 0, right: 0))
        backButton.addTarget(self, action: #selector(backPressed(button:)), for: .touchUpInside)
        
        
        let headerStackView = UIStackView(arrangedSubviews: [
            backButton, selectionLabel
            ])
        headerStackView.spacing = 30
        headerStackView.alignment = .leading
        
        let mainVerticalStackview = VerticalStackView(arrangedSubviews: [
            UIStackView(arrangedSubviews: [
                headerStackView
                ]),
            ])
        
        view.addSubview(mainVerticalStackview)
        
        mainVerticalStackview.anchor(top: view.layoutMarginsGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        mainVerticalStackview.spacing = 20
        mainVerticalStackview.alignment = .center
        
    }
    
    @objc func backPressed(button: UIButton) {
        router?.transitionTo(screen: .menu, animatedWithOptions: nil)
    }
    
}
