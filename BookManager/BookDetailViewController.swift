//
//  BookDetailViewController.swift
//  BookManager
//
//  Created by Seokjune Hong on 2022/07/21.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    static var identifier = "BookDetailViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func webButtonClicked(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "BookWeb", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: BookWebViewController.identifier) as! BookWebViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
