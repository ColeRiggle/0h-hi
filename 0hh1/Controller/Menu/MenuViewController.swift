//
//  MenuViewController.swift
//  0hh1
//
//  Created by Cole Riggle on 1/18/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class MenuViewController: RoutedViewController {
    
    let gameTitleLabel = UILabel(text: "Oh hi", font: UIFont(name: "lobster", size: 80) ?? .systemFont(ofSize: 80))
    let gameVersionLabel = UILabel(text: " v0.1", font: .systemFont(ofSize: 20))
    
    let playButton = UIButton(title: "Play")
    
    lazy var developerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "vortex logo")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        gameTitleLabel.textAlignment = .center
        gameTitleLabel.textColor = .white
        
        gameTitleLabel.font = UIFont(name: "Lobster 1.4", size: 80)
        
        gameVersionLabel.textAlignment = .left
        gameVersionLabel.textColor = .systemRed
        
        playButton.titleLabel?.font = .systemFont(ofSize: 45)
        playButton.setTitleColor(.white, for: .normal)
        playButton.addTarget(self, action: #selector(playGame), for: .touchUpInside)
        
        let gameInfoStackView = UIStackView(arrangedSubviews: [gameTitleLabel, gameVersionLabel])
        gameInfoStackView.alignment = .lastBaseline
        
        let stackView = VerticalStackView(arrangedSubviews: [
            gameInfoStackView,
            playButton,
            ], spacing: 40)
        stackView.alignment = .center
        
        view.addSubview(stackView)
        view.addSubview(developerImage)
        
        stackView.distribution = .fillProportionally
        stackView.anchor(top: view.layoutMarginsGuide.topAnchor, leading: view.layoutMarginsGuide.leadingAnchor, bottom: nil, trailing: view.layoutMarginsGuide.trailingAnchor)
        
        //stackView.bottomAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: developerImage.topAnchor, multiplier: 40).isActive = true
        
        developerImage.anchor(top: nil, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        }
    
    @objc fileprivate func playGame(sender: UIButton!) {
        print("Play button pressed")
        
    
        
        router?.transitionTo(screen: .boardSelection, animatedWithOptions: nil)
    }
    
//    fileprivate func setupConstraints() {
//        let margins = view.layoutMarginsGuide
//        NSLayoutConstraint.activate([
//            newView.topAnchor.constraint(equalTo: margins.topAnchor),
//            newView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
//            newView.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
//            newView.bottomAnchor.constraint(equalTo: margins.bottomAnchor)
//        ])
//    }
}

