//
//  MyCollectionViewCell.swift
//  APM
//
//  Created by Кирилл Комаровский on 24.04.2021.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    //static let im = UIImage(named: "image6")
    static let identi = "MyCollectionViewCell"
    @IBOutlet var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func confic(imag: UIImage) {
        imageView.image = imag
    }
    
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
}
