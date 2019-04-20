//
//  BookUseCase.swift
//  books
//
//  Copyright © 2019 Nicolas Wang. All rights reserved.
//

import Foundation
import PromiseKit

class BooksUseCase {
    private let repository: BookRepository
    
    init(repository: BookRepository) {
        self.repository = repository
    }
    
    func execute() -> Promise<[Book]> {
        return self.repository.requestBooks()
    }
}
