//
//  BookCollectionViewCell.swift
//  BookManager
//
//  Created by Seokjune Hong on 2022/07/20.
//

import UIKit
import Kingfisher

class BookCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    func configureCell(data: Book) {
        titleLabel.text = data.bookTitle
        rateLabel.text = "\(data.bookRate)"
        bookImageView.kf.setImage(with: URL(string: data.bookImage))
    }
}
