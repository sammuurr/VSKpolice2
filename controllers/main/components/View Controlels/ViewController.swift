//
//  ViewController.swift
//  WSKpolice
//
//  Created by ADMIMN on 07.10.2020.
//

import UIKit

public var guestMod = false

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {

        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))        // Do any additional setup after loading the view.
        let timeArray = [UIImage(named: "Mask"),UIImage(named: "Mask-1"),UIImage(named: "Mask-2"), UIImage(named: "Mask-3"),UIImage(named: "Mask-4"), UIImage(named: "Mask-5")]
    }

    
    
    @IBOutlet var login: UITextField!
    @IBOutlet var passworld: UITextField!
    @IBOutlet var statusLabel: UILabel!
    
    
    
    
    
    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
    self.view.endEditing(true)
    return false
    }
    
    @IBAction func siginButton(_ sender: UIButton) {
        guestMod = false
        let adminLog = ""
        let adminPas = ""
        
        if ((login.text == adminLog) && (passworld.text == adminPas)){
            
            statusLabel.text = ""
            let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "mainLayouat")
            self.show(vc as! UIViewController, sender: vc)
        }else{
            statusLabel.text = "Не правильный пароль или логин"
        }
    }
    @IBAction func guestButton(_ sender: UIButton) {
        guestMod = true
        let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "mainLayouat")
        self.show(vc as! UIViewController, sender: vc)
    }
}

