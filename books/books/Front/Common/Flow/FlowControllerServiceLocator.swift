//
//  FlowControllerServiceLocator.swift
//  books
//
//  Copyright © 2019 Nicolas Wang. All rights reserved.
//

import Foundation

class FlowControllerServiceLocator: ServiceLocatorModule {
    func registerServices(serviceLocator: ServiceLocator) {
        serviceLocator.registerSingleton(provideFlow())
    }
    
    func provideFlow() -> FlowController {
        return FlowController()
    }
}
