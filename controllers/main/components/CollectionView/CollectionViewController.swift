//
//  CollectionViewController.swift
//  WSKpolice
//
//  Created by ADMIMN on 08.10.2020.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if guestMod == false{
            return 5
            
        }else{
            return 4
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as? CollectionViewCell
        
        if guestMod == false {
            if indexPath.row == 0 {
                cell!.textLabel.text = "Criminal Cases"
                cell!.imageView.image = UIImage(named: "icons8-предупреждение-о-защите-96")
            }else if (indexPath.row == 1){
                cell!.textLabel.text = "Departments"
                cell!.imageView.image = UIImage(named: "icons8-защита-пользователя-96")
            }else if (indexPath.row == 2){
                cell!.textLabel.text = "Wanted"
                cell!.imageView.image = UIImage(named: "icons8-распознавание-лица-96")
            }else if (indexPath.row == 3){
                cell!.textLabel.text = "Detectives"
                cell!.imageView.image = UIImage(named: "icons8-детектив-96")
            }else if (indexPath.row == 4){
                cell!.textLabel.text = "PhotoRobot"
                cell!.imageView.image = UIImage(named: "icons8-идентификатор-лица-96")
            }
        }else{
            if indexPath.row == 0 {
                cell!.textLabel.text = "Departments"
                cell!.imageView.image = UIImage(named: "icons8-защита-пользователя-96")
            }else if (indexPath.row == 1){
                cell!.textLabel.text = "Wanted"
                cell!.imageView.image = UIImage(named: "icons8-распознавание-лица-96")
            }else if (indexPath.row == 2){
                cell!.textLabel.text = "PhotoRobot"
                cell!.imageView.image = UIImage(named: "icons8-идентификатор-лица-96")
            }else if (indexPath.row == 3){
                cell!.textLabel.text = "Paint"
                cell!.imageView.image = UIImage(named: "icons8-зарегистрироваться-96")
            }
        }
        

    
        return cell!
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        if guestMod == false{
            if indexPath.item == 0{
                let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "criminalcase")
                self.show(vc as! UIViewController, sender: vc)
            }else if indexPath.item == 1 {
                let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "departaments")
                self.show(vc as! UIViewController, sender: vc)
            }else if indexPath.item == 2 {
                let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "wanted")
                self.show(vc as! UIViewController, sender: vc)
            }else if indexPath.item == 4 {
                let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "photorobots")
                self.show(vc as! UIViewController, sender: vc)
            }
        }else{
            if indexPath.item == 0 {
                let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "departaments")
                self.show(vc as! UIViewController, sender: vc)
            }else if indexPath.item == 1 {
                let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "wanted")
                self.show(vc as! UIViewController, sender: vc)
            }else if indexPath.item == 2 {
                let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "photorobots")
                self.show(vc as! UIViewController, sender: vc)
            }else if indexPath.item == 3 {
                let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "paint")
                self.show(vc as! UIViewController, sender: vc)
            }
        }
    }
}
