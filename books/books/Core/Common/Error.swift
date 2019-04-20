//
//  Error.swift
//  Template
//
//  Copyright © 2019 Nicolas. All rights reserved.
//

import Foundation

enum BaseError: String, Error {
    case undefined = "Se ha producido un error inesperado. Por favor, inténtelo nuevamente más tarde"
}

extension BaseError: LocalizedError {
    
    var errorDescription: String? {
        return self.rawValue
    }
}
