//
//  ViewControllerAddNewWanted.swift
//  VSKpolice2
//
//  Created by Nq on 13.10.2020.
//

import UIKit

class ViewControllerAddNewWanted: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    
    @IBAction func eqwrtytuiu(_ sender: Any) {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    
    
    @IBAction func saveWantedPeople(_ sender: Any) {
    }
    @IBOutlet weak var wantedIMageVIews: UIImageView!
    
    
    @IBAction func imageAddWatedButton(_ sender: UIButton){
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
                
        present(imagePicker, animated: true, completion: nil)
              
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            wantedIMageVIews.contentMode = .scaleAspectFit
            wantedIMageVIews.image = pickedImage
        }
     
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            dismiss(animated: true, completion: nil)
        }

}

