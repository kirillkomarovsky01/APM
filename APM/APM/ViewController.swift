//
//  ViewController.swift
//  APM
//
//  Created by Кирилл Комаровский on 24.04.2021.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    //let im = UIImage()
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 120)
      
        
        collectionView.collectionViewLayout = layout
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identi)
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}

extension ViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identi, for: indexPath) as! MyCollectionViewCell
        
        
        if (cell.confic())
        {
            print("good")
        } else {
            print("bad")
            showAlert()
        }
        return cell
    }
    func showAlert() {
        
        let alert = UIAlertController(title: "Error", message: "Cannot acces", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { action in
            print("tapped me")
        }))
        
        present(alert, animated: true)
    
    }
    
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        print("you tapped me")
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 180)
    }
}
