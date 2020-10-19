//
//  WantedPeoples.swift
//  VSKpolice2
//
//  Created by Nq on 16.10.2020.
//

import UIKit

struct wantedPeople {
    var status:String
    var firstName:String
    var lastName:String
    var nickNames:String
    var midleName:String
    var lastLocation:String
    var Description:String
    var photo:Data?
    
}



class WantedPeople{
    
    func startFunction() -> Int{
        guard let array = userDefaults.array(forKey: "wantedPeople") as? [wantedPeople] else {
            
            return 1
        }
        return 23
    }
    
    func newPhotoRobot(image: UIImage){
        var timeArray = userDefaults.array(forKey: "wantedPeople")
        timeArray?.append(image.pngData())
    
        userDefaults.set(timeArray, forKey: "wantedPeople")
        
    }
    
    func returnPhotoRobotObjekt() ->  Array<wantedPeople?> {
        
        if startFunction() != 1 {

            return userDefaults.array(forKey: "wantedPeople") as! [wantedPeople]
            
        }else{
            let imagUIImage = [wantedPeople(status: "Pursuit", firstName: "Oleg", lastName: "Lopuhov", nickNames: "Rybak", midleName: "Viktorovich", lastLocation: "Lihobory street, 21", Description: "It’s only Monday, but let’s call it Black too! Westart the biggest sale as early as possible tobring you all our amazing products with crazy60% discount. Hurry up, the offer expriessoon.", photo: Data(UIImage(named: "Userpic-1")!.pngData()!)),
                               
                               wantedPeople(status: "Pursuit", firstName: "Egor", lastName: "Kraev", nickNames: "Pes", midleName: "Sergevich", lastLocation: "Lihobory street, 21", Description: "It’s only Monday, but let’s call it Black too! Westart the biggest sale as early as possible tobring you all our amazing products with crazy60% discount. Hurry up, the offer expriessoon.", photo: Data(UIImage(named: "Userpic-2")!.pngData()!)),
                               
                               wantedPeople(status: "Pursuit", firstName: "Ali", lastName: "Mudjipov", nickNames: "Stamatolog", midleName: "", lastLocation: "Lihobory street, 21", Description: "It’s only Monday, but let’s call it Black too! Westart the biggest sale as early as possible tobring you all our amazing products with crazy60% discount. Hurry up, the offer expriessoon.", photo: Data(UIImage(named: "Userpic-3")!.pngData()!)),
                               
                               wantedPeople(status: "Pursuit", firstName: "Danil", lastName: "Manko", nickNames: "Sudar", midleName: "Vladimorvich", lastLocation: "Lihobory street, 21", Description: "It’s only Monday, but let’s call it Black too! Westart the biggest sale as early as possible tobring you all our amazing products with crazy60% discount. Hurry up, the offer expriessoon.", photo: Data(UIImage(named: "Userpic-4")!.pngData()!))
            ]
            
            userDefaults.set(imagUIImage, forKey: "wantedPeople")
            return imagUIImage
        }
    }
    
    
    
    
    
    
}
