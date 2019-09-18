//
//  TableViewCell4.swift
//  PRACTICA
//
//  Created by MacBook on 13/04/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit

protocol TableViewCell4Delegate: class {
    func celldidPress()
}



class TableViewCell4: UITableViewCell {
    
    weak var delegate: TableViewCell4Delegate!
    
    @IBOutlet weak var collView2: UICollectionView!
    
    let countCells = 3
    let offSet:CGFloat = 6.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView2()
    
    }

   
    
    func setupCollectionView2() {
        
        collView2.dataSource = self
        collView2.delegate = self
       
    }

}
extension TableViewCell4: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 20
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CollectionViewCell2.self), for: indexPath)
    
        
        
        return cell
}
    
}
extension TableViewCell4: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        delegate.celldidPress()
        
    }
    
}
extension TableViewCell4: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      
        let frameCV = collectionView.frame
        let widthCell = frameCV.width / CGFloat(countCells)
        let heightCell = widthCell
        let spacing = CGFloat((countCells + 1)) * offSet / CGFloat(countCells)
        
        return CGSize(width: widthCell - spacing, height: heightCell - (offSet * 5))
    }
    
}
