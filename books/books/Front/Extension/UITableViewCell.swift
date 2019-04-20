//
//  UITableViewCell.swift
//  Template
//
//  Copyright © 2019 Nicolas. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell: NibLoadableView { }

extension UITableViewCell: ReusableView { }

extension UITableViewCell {
    func clearInit() {
        self.contentView.backgroundColor = .clear
        self.backgroundColor = .clear
        self.selectionStyle = .none
    }
    
}
