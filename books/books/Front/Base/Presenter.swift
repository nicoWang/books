//
//  Presenter.swift
//  Template
//
//  Copyright © 2019 Nicolas. All rights reserved.
//

import Foundation

protocol BaseView: class {
    func showLoading()
    func hideLoading()
    func showAlert(with error: Error)
}

protocol Presenter {
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
}

extension Presenter {
    func viewDidLoad() { }
    func viewWillAppear() { }
    func viewDidAppear() { }
    func viewWillDisappear() { }
}
