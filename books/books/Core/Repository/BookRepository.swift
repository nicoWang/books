//
//  BookRepository.swift
//  books
//
//  Copyright © 2019 Nicolas Wang. All rights reserved.
//

import Foundation
import PromiseKit

class BookRepository: BaseApiManager {
    func requestBooks() -> Promise<[Book]> {
        return Promise<[Book]> { seal  in
            
            request(url: Constants.mainUrl, method: .get, parameters: nil, headers: nil).done { response in
                guard let books = try? JSONDecoder().decode([Book].self, from: response) else { return                     seal.reject(BaseError.undefined) }
                
                seal.fulfill(books)
                }.catch { error in
                    seal.reject(BaseError.undefined)
            }
        }
        
    }
}
