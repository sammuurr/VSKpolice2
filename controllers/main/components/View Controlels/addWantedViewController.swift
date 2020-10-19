//
//  addWantedViewController.swift
//  VSKpolice2
//
//  Created by Nq on 14.10.2020.
//

import UIKit

class addWantedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 6
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "addNewWantedCell", for: indexPath as IndexPath) as? addNewWantedCell
        
        
        cell!.label.text = "labelsadfghjkll;kjhgfds"
    

    
        return cell!
    }


}
