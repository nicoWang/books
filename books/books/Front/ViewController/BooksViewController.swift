//
//  BooksViewController.swift
//  books
//
//  Copyright © 2019 Nicolas Wang. All rights reserved.
//

import UIKit

class BooksViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var booksPresenter: BooksPresenter!
    
    override var presenter: Presenter {
        return booksPresenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeUI()
    }
    
    private func customizeUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(BooksTableViewCell.self)
    }

}

extension BooksViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booksPresenter.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: BooksTableViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        if let book = booksPresenter.book(at: indexPath.row) {
            cell.configure(with: book)
        }
        
        return cell
    }
}

extension BooksViewController: BooksView {
    func reloadData() {
        self.tableView.reloadData()
    }
}
