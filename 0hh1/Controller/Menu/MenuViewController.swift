//
//  MenuViewController.swift
//  0hh1
//
//  Created by Cole Riggle on 1/18/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class MenuViewController: RoutedViewController {
    
    let gameTitleLabel = SectionHeaderLabel(text: "Oh hi", size: 80)
    let gameVersionLabel = UILabel(text: "v0.1", font: .systemFont(ofSize: 20))
    
    let playButton = UIButton(title: "Play")
    
    let rulesButton = UIButton(title: "Rules")
    
    let settingsButton = UIButton(title: "Settings")
    
    lazy var developerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "vortex logo")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        view.fillSuperview()
        
        gameTitleLabel.textAlignment = .left
        gameTitleLabel.widthAnchor.constraint(equalToConstant: gameTitleLabel.intrinsicContentSize.width + 5).isActive = true
        
        gameVersionLabel.textAlignment = .left
        gameVersionLabel.textColor = .systemRed
        
        applyButtonFormatting(button: playButton)
        playButton.addTarget(self, action: #selector(playGame), for: .touchUpInside)
        
        applyButtonFormatting(button: rulesButton)
        
        applyButtonFormatting(button: settingsButton)
        
        let buttonStackView = VerticalStackView(arrangedSubviews: [
            playButton,
            rulesButton,
            settingsButton
        ], spacing: 20)
        buttonStackView.alignment = .center
        
        let stackView = VerticalStackView(arrangedSubviews: [
            gameTitleLabel,
            buttonStackView,
            ], spacing: 40)
        
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        
        view.addSubview(stackView)
        view.addSubview(developerImage)
        view.addSubview(gameVersionLabel)
        
        stackView.anchor(top: view.layoutMarginsGuide.topAnchor, leading: view.layoutMarginsGuide.leadingAnchor, bottom: nil, trailing: view.layoutMarginsGuide.trailingAnchor)
        
        gameVersionLabel.translatesAutoresizingMaskIntoConstraints = false
        gameVersionLabel.topAnchor.constraint(equalTo: gameTitleLabel.centerYAnchor, constant: 11).isActive = true
        gameVersionLabel.leadingAnchor.constraint(equalTo: gameTitleLabel.centerXAnchor, constant: (gameTitleLabel.intrinsicContentSize.width / 2) + 10).isActive = true
        
        developerImage.translatesAutoresizingMaskIntoConstraints = false
        developerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        developerImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25).isActive = true
        developerImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        developerImage.contentMode = .scaleAspectFit
        
    }
    
    fileprivate func applyButtonFormatting(button: UIButton) {
        button.titleLabel?.font = .systemFont(ofSize: 45)
        button.setTitleColor(.systemRed, for: .normal)
    }
    
    @objc fileprivate func playGame(sender: UIButton!) {
        router?.transitionTo(screen: .boardSelection, animatedWithOptions: nil)
    }
    
}

