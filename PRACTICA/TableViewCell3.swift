//
//  TableViewCell3.swift
//  PRACTICA
//
//  Created by MacBook on 13/04/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit

class TableViewCell3: UITableViewCell {
    @IBOutlet weak var collView: UICollectionView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
         setupCollectionView()
    }

    
    func setupCollectionView() {

        collView.dataSource = self
        collView.delegate = self


    }
    
}
extension TableViewCell3: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CollectionViewCell1.self), for: indexPath)

        return cell
    }





}

extension TableViewCell3: UICollectionViewDelegate {


}
