//
//  RootRouter.swift
//  0hh1
//
//  Created by Cole Riggle on 1/18/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class RootRouter {

// MARK: Stored View Controllers
    private lazy var menuVC: UIViewController = {
        let controller = MenuViewController()
        controller.router = self
        return controller
    }()
    
    private lazy var boardSelectionVC: UIViewController = {
        let controller = BoardSelectionViewController()
        controller.router = self
        return controller
    }()
    
    // MARK: Nested Types
    enum Screen {
        case menu
        case boardSelection
    }
    
    // MARK: Public Functions
    func transitionTo(screen: Screen, animatedWithOptions: UIView.AnimationOptions?) {
        var controller: UIViewController
        switch screen {
            case .menu:
                controller = menuVC
            case .boardSelection:
                controller = boardSelectionVC
        }
        setRootViewController(controller: controller,
                              animatedWithOptions: animatedWithOptions)
    }
    
    /** Replaces root view controller. You can specify the replacment animation type.
     If no animation type is specified, there is no animation */
    func setRootViewController(controller: UIViewController, animatedWithOptions: UIView.AnimationOptions?) {
        guard let window = UIApplication.shared.keyWindow else {
            fatalError("No window in app")
        }
        if let animationOptions = animatedWithOptions, window.rootViewController != nil {
            window.rootViewController = controller
            UIView.transition(with: window, duration: 0.33, options: animationOptions, animations: {
            }, completion: nil)
        } else {
            window.rootViewController = controller
        }
    }
    
    func loadMainAppStructure() {
        
        setRootViewController(controller: menuVC, animatedWithOptions: nil)
    }
    
}
