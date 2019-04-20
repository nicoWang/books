//
//  CoreServiceLocator.swift
//  books
//
//  Copyright © 2019 Nicolas Wang. All rights reserved.
//

import Foundation

class CoreServiceLocator: ServiceLocatorModule {
    func registerServices(serviceLocator: ServiceLocator) {
        serviceLocator.register { self.provideRepository() }
        serviceLocator.register { self.provideUseCase() }
    }
    
    func provideRepository() -> BookRepository {
        return BookRepository()
    }
    
    func provideUseCase() -> BooksUseCase {
        return BooksUseCase(repository: ServiceLocator.inject())
    }
    
}
