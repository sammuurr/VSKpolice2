//
//  ViewControllerCriminalCaseShow.swift
//  VSKpolice2
//
//  Created by Nq on 19.10.2020.
//

import UIKit

class ViewControllerCriminalCaseShow: UIViewController {

   
    
    @IBOutlet weak var controlerButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func hideDescriptionButton(_ sender: UIButton) {
        if textLabel.isHidden {
            textLabel.isHidden = false
            controlerButton.setTitle("⬆︎", for: .normal)
        }else{
            textLabel.isHidden = true
            controlerButton.setTitle("⬇︎", for: .normal)
        }
    }
    
    
    @IBAction func evidenceButton(_ sender: UIButton) {
    }
    
    @IBAction func photoButton(_ sender: UIButton) {
    }
    
    @IBAction func audioButton(_ sender: UIButton) {
    }
    
}
