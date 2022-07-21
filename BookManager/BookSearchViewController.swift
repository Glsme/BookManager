//
//  BookSearchViewController.swift
//  BookManager
//
//  Created by Seokjune Hong on 2022/07/22.
//

import UIKit

class BookSearchViewController: UIViewController {
    
    static var identifier = "BookSearchViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
    }
    
    @objc func closeButtonClicked() {
        self.dismiss(animated: true)
    }
}
