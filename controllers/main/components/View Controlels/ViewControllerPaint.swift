//
//  ViewControllerPaint.swift
//  VSKpolice2
//
//  Created by Nq on 15.10.2020.
//

import UIKit

class ViewControllerPaint: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    
    @IBOutlet weak var widthSider: UISlider!
    @IBOutlet weak var canvasView: ConvasView!
    @IBOutlet weak var collectionView: UICollectionView!
    var swith = false
    var swith2 = false
   

    var items:[UIColor] = [UIColor.black,UIColor.blue,UIColor.brown,UIColor.cyan,UIColor.darkGray,UIColor.green,UIColor.magenta,UIColor.orange,UIColor.purple,UIColor.red,UIColor.yellow]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    @IBAction func onClickClear(_ sender: Any) {
        canvasView.clearCanvasView()
    }
    @IBAction func onClickBraheSize(_ sender: UISlider) {
        canvasView.strokeWidth = CGFloat(sender.value)
    }
    
    @IBAction func shareSave(_ sender: Any) {
        let activityItems = [canvasView.takeScreeShot()]
        let activityController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        self.present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func colorButton(_ sender: UIButton) {
        if swith{
            widthSider.isHidden = true
            collectionView.isHidden = true
            swith = !swith
        }else{
            if swith2 == true {swith2 = false}
            widthSider.isHidden = true
            collectionView.isHidden = false
            swith = !swith
        }
    }
        
    @IBAction func sizeButton(_ sender: UIButton) {
        if swith2{
            widthSider.isHidden = true
            collectionView.isHidden = true
            swith2 = !swith2
        }else{
            if swith == true {swith = false}
            collectionView.isHidden = true
            widthSider.isHidden = false
            swith2 = !swith2
        }
        
    }
    
   
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellPaint", for: indexPath)
        
    
        cell.contentView.backgroundColor = items[indexPath.row]
        cell.contentView.layer.cornerRadius = 3
    
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        canvasView.strokeColor = items[indexPath.row]
    }
    
    
    

}

