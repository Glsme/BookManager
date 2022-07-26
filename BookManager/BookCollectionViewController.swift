//
//  BookCollectionViewController.swift
//  BookManager
//
//  Created by Seokjune Hong on 2022/07/20.
//

import UIKit
import Kingfisher

class BookCollectionViewController: UICollectionViewController {
    
    var bookList = BookData()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let bookWidth = UIScreen.main.bounds.width - (spacing * 4)
        layout.itemSize = CGSize(width: bookWidth / 2, height: bookWidth / 2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.book.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
        
        cell.layer.cornerRadius = 20
        let color = indexPath.row % 2 == 0 ? UIColor.orange : UIColor.lightGray
        cell.backgroundColor = color
        cell.titleLabel.font = .boldSystemFont(ofSize: 16)
        
        let data = bookList.book[indexPath.row]
        cell.configureCell(data: data)
        
//        let  url = URL(string: imageURL)
//        cell.bookImageView.kf.setImage(with: url)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "BookDetail", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: BookDetailViewController.identifier) as! BookDetailViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func searchButtonClicked(_ sender: UIBarButtonItem) {
        let storyBoard = UIStoryboard(name: "BookSearch", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: BookSearchViewController.identifier) as! BookSearchViewController
        
        let navigationController = UINavigationController(rootViewController: vc)
        
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true)
//        self.navigationController?.pushViewController(vc, animated: true)
    }
}
