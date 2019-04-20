//
//  FrontServiceLocator.swift
//  books
//
//  Created by Nicolas Wang on 20/04/2019.
//  Copyright © 2019 Nicolas Wang. All rights reserved.
//

import Foundation

class FrontServiceLocator: ServiceLocatorModule {
    func registerServices(serviceLocator: ServiceLocator) {
        serviceLocator.register { self.provideBooksViewController() }
    }
    
    
    func provideBooksViewController() -> BooksViewController {
        let viewController = BooksViewController()
        viewController.booksPresenter = BooksPresenter(view: viewController, useCase: ServiceLocator.inject())
        return viewController
    }
}
