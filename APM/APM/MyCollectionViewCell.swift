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
    
    public func confic() {
        imageView.sd_setImage(with: URL(string: "https://m.gordonua.com/img/gallery/1511/82/106954_big.jpg"), placeholderImage: UIImage(named: "placeholder.png"))
        //imageView.image = imag
    }
    
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
}
