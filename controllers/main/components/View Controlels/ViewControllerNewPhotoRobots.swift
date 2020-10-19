//
//  ViewControllerNewPhotoRobots.swift
//  VSKpolice2
//
//  Created by Nq on 14.10.2020.
//

import UIKit

class ViewControllerNewPhotoRobots: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    

    @IBOutlet weak var collectionViewHead: UICollectionView!
    @IBOutlet weak var collectionViewCentr: UICollectionView!
    @IBOutlet weak var collectionViewBottom: UICollectionView!
    @IBOutlet weak var viewses: VIewClas!
    
    
    var photo:photoRobots? = nil
    
    override func viewDidLoad() {
        let clases = photoRobots()
        clases.setup()
        super.viewDidLoad()
        
        self.collectionViewHead.dataSource = self
        self.collectionViewHead.delegate = self
        
        self.collectionViewCentr.dataSource = self
        self.collectionViewCentr.delegate = self
        
        self.collectionViewBottom.dataSource = self
        self.collectionViewBottom.delegate = self
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let activityItems = [viewses.makeSnapshot()]
        let activityController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        self.present(activityController, animated: true, completion: nil)
        
    }
    
    @IBAction func saveINPHotoRobotButton(_ sender: UIButton) {
        NewPhotoRobots().newPhotoRobot(image: viewses.makeSnapshot()!)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        let clases = photoRobots().setup()
        
        
        
        if collectionView == collectionViewHead{
            
            return clases.topImage.count
        }else if collectionView == collectionViewCentr {

            return clases.centerImage.count
        }else{

            return clases.bottomImage.count
        }
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let clases = photoRobots().setup()
        
        if collectionView == collectionViewHead{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellNewPhotoRobots", for: indexPath) as! CollectionViewCellNewPhotoRobots
            
            for i in 0...(clases.topImage.count - 1){
                if indexPath.row == i{
                    cell.headImage.image = UIImage(named: (clases.topImage[i]))
                
                }
            }
            return cell
        }else if collectionView == collectionViewCentr {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellNewPhotoRobotsCentr", for: indexPath) as! CollectionViewCellNewPhotoRobots
            for i in 0...(clases.centerImage.count - 1){
                if indexPath.row == i{
                    cell.centrImage.image = UIImage(named: (clases.centerImage[i]))
                }
            }
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellNewPhotoRobotsBottom", for: indexPath) as! CollectionViewCellNewPhotoRobots
            for i in 0...(clases.bottomImage.count - 1){
                if indexPath.row == i{
                    cell.bottomImage.image = UIImage(named: (clases.bottomImage[i]))
                }
            }
            return cell
        }
    }
}

        
    
    
   


