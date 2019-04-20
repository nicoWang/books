//
//  BooksTableViewCell.swift
//  books
//
//  Created by Nicolas Wang on 20/04/2019.
//  Copyright © 2019 Nicolas Wang. All rights reserved.
//

import UIKit

class BooksTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeUI()
    }

    private func customizeUI() {
        self.selectionStyle = .none
    }
    
    func configure(with book: Book) {
        if let image = book.imageURL {
            iconImageView.imageFromURLWithCache(url: image)
        }
        
        if let title = book.title {
            titleLabel.text = title
        }
        
        if let subtitle = book.author {
            subtitleLabel.text = subtitle
        }
    }
}
