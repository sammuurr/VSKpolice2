//
//  PhotoInPhotoRobots.swift
//  VSKpolice2
//
//  Created by Nq on 16.10.2020.
//

import UIKit

let userDefaults  = UserDefaults.standard

class NewPhotoRobots {
    
    func startFunction() -> Int{
        guard let array = userDefaults.array(forKey: "imagesArray") as? [Data] else {
            
            return 1
        }
        return 23
    }
    
    
    func newPhotoRobot(image: UIImage){
        var timeArray = userDefaults.array(forKey: "imagesArray")
        timeArray?.append(image.pngData())
    
        userDefaults.set(timeArray, forKey: "imagesArray")
        
    }
    
    func returnPhotoRobotObjekt() ->  Array<Data?> {
        
        if startFunction() != 1 {
            print ("dd")

            return userDefaults.array(forKey: "imagesArray") as! [Data]
            
        }else{
            let imagUIImage = [UIImage(named: "Mask")!.pngData(),UIImage(named: "Mask-1")!.pngData(),UIImage(named: "Mask-2")!.pngData(), UIImage(named: "Mask-3")!.pngData(),UIImage(named: "Mask-4")!.pngData(), UIImage(named: "Mask-5")!.pngData()]
            
            userDefaults.set(imagUIImage, forKey: "imagesArray")
            return imagUIImage
        }
    }
    
    
}
