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
    
    let url: URL? = URL(string: "https://m.gordonua.com/img/gallery/1511/82/106954_big.jpg")
    
    public func confic() -> Bool {
        
        var flag: Bool = true
        if self.url == nil {
            flag = false
            return flag
        }
        
        if (CheckInternet.isConnectedToNetwork() == true) {
            
            DispatchQueue.main.async {
                if self.url != nil {
                    if let data = try? Data(contentsOf: self.url!) {
                        self.imageView.image = UIImage(data: data)
                        flag = true
                    }
                }
            }
        }
        return flag
    }
    
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
}
