//
//  BooksPresenter.swift
//  books
//
//  Copyright © 2019 Nicolas Wang. All rights reserved.
//

import Foundation

protocol BooksView: BaseView {
    func reloadData()
}

class BooksPresenter: Presenter {
    
    private weak var view: BooksView?
    private let useCase: BooksUseCase
    private var books: [Book]?
    
    init(
        view: BooksView,
        useCase: BooksUseCase
        ) {
        self.view = view
        self.useCase = useCase
    }
    
    func viewDidLoad() {
        getBooks()
    }
    
    func getBooks() {
        self.view?.showLoading()
        useCase.execute().done { books in
            self.books = books
            self.view?.reloadData()
            }.ensure {
                self.view?.hideLoading()
            }.catch { error in
                self.view?.showAlert(with: error)
        }
    }
    
    func numberOfRows() -> Int {
        guard let count = books?.count else { return 0 }
        return count
    }
    
    func book(at index: Int) -> Book? {
        return books?[index]
    }
}
