//
//  CollectionViewCell.swift
//  TicTacToe
//
//  Created by srk on 29/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    func setupCell(with status:Int) {
        
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        
        contentView.addSubview(myImageView)
        
        myImageView.frame = CGRect(x: 10, y: 10, width: 60, height: 60)
        
        let name = status == 0 ? "circle" : status == 1 ? "multiply" : ""
        
        myImageView.image = UIImage(named: name)
    }
    
}
