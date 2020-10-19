//
//  CollectionViewController2.swift
//  WSKpolice
//
//  Created by ADMIMN on 08.10.2020.
//

import UIKit

private let reuseIdentifier = "cell2"

class CollectionViewController2: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

 




    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 2
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
    
        return cell
    }
}
