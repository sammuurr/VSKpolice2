//
//  photoRobot.swift
//  VSKpolice2
//
//  Created by Nq on 14.10.2020.
//

import Foundation
import UIKit




class photoRobots{
    
    
    struct photoRobot {
        var topImage:Array<String>
        var centerImage:Array<String>
        var bottomImage:Array<String>
    }
    
 

    func setup() -> photoRobot{
        var photoR:photoRobot = photoRobot(topImage: [], centerImage: [], bottomImage: [])
        
            for i in 1...201{
                if i < 10{
                    photoR.topImage.append("top0000\(i)")
                } else if (i < 100){
                    photoR.topImage.append("top000\(i)")
                }else if (i < 1000){
                    photoR.topImage.append("top00\(i)")
                }
            }
        
        
       
            for i in 1...202{


                if i < 10{
                    photoR.centerImage.append("center0000\(i)")
                } else if (i < 100){
                    photoR.centerImage.append("center000\(i)")
                }else if (i < 1000){
                    photoR.centerImage.append("center00\(i)")
                }
                

            }
        
      
            for i in 1...200{
                if i < 10{
                    photoR.bottomImage.append("bottom0000\(i)")
                } else if (i < 100){
                    photoR.bottomImage.append("bottom000\(i)")
                }else if (i < 1000){
                    photoR.bottomImage.append("bottom00\(i)")
                    
                }
            }
        return photoR
        
    }
}
