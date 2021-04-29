//
//  MyCollectionViewCell.swift
//  APM
//
//  Created by Кирилл Комаровский on 24.04.2021.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    //static let im = UIImage(named: "image6")
    static let identi = "MyCollectionViewCell"
    @IBOutlet var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func confic() {
        if (CheckInternet.isConnectedToNetwork() == true) {
            DispatchQueue.main.async {
                if let url = URL(string: "https://m.gordonua.com/img/gallery/1511/82/106954_big.jpg") {
                    if let data = try? Data(contentsOf: url) {
                        self.imageView.image = UIImage(data: data)
                    }
                }
            }
        }
        else {
            imageView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            //indicator.startAnimating()
        }
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
}
