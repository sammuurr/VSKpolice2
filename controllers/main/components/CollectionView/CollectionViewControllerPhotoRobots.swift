//
//  CollectionViewControllerPhotoRobots.swift
//  VSKpolice2
//
//  Created by Nq on 13.10.2020.
//
import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewControllerPhotoRobots: UICollectionViewController {

    let imageObjekts = NewPhotoRobots().returnPhotoRobotObjekt()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadPhotoRobot()
        
    }
    
    func reloadPhotoRobot(){
        collectionView.reloadData()
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageObjekts.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as? CollectionViewCellPhotoRobots
        
        for i in 0..<imageObjekts.count{
            if indexPath.row == i {
                cell!.imageView.image = UIImage(data: imageObjekts[i]!)
                   
            }
        }

    
        return cell!
    }
}
