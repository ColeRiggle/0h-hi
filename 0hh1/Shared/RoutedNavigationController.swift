//
//  RoutedNavigationController.swift
//  0hh1
//
//  Created by Cole Riggle on 1/19/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class RoutedNavigationController: UIViewController {
    var router: RootRouter?
    func routeTo(screen: RootRouter.Screen, animatedWithOptions options: UIView.AnimationOptions? = nil) {
        router?.transitionTo(screen: screen, animatedWithOptions: options)
    }
}
