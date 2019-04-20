//
//  Router.swift
//  Template
//
//  Copyright © 2019 Nicolas. All rights reserved.
//

import Foundation
import UIKit

class FlowController {
    
    private var navigation: UINavigationController?
    
    func start() -> UINavigationController {
        let viewController: BooksViewController = ServiceLocator.inject()
        navigation = UINavigationController(rootViewController: viewController)
        return navigation!
    }
    
}
