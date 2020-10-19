//
//  ViewControllerWanted.swift
//  VSKpolice2
//
//  Created by Nq on 12.10.2020.
//

import UIKit

class ViewControllerWanted: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var buttonAddWanted: UIButton!
    @IBOutlet weak var delteButtonWanted: UIButton!
    @IBOutlet weak var wantedTableView: UITableView!
    
    
    struct tableInfo {
        var nameArray:Array<String>
        var imageArray:Array<String>
        var btnStatus:Array<Bool>
}
    
    
    let nameArray = ["Lopuhov Oleg Viktorovich", "Kraev Egor Sergeevich", "Mudjipov Ali", "Manko Daniil Vladimirovich"]
    let imageArray = ["Userpic", "Userpic-1", "Userpic-2", "Userpic-3"]
    var swith = true
    var wantedPeoples:tableInfo? = nil
    
    func createTableInfo(){
        let timeVar:Array<Bool> = []
        wantedPeoples = tableInfo(nameArray: nameArray, imageArray: imageArray, btnStatus: timeVar);for _ in 1...wantedPeoples!.nameArray.count{wantedPeoples!.btnStatus.append(false)}
         
        
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createTableInfo()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        
   
      
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        let count = wantedPeoples!.nameArray.count
        if count < 14 {
            tableView.isScrollEnabled = false
        }
        return count
    }

    
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath as IndexPath) as? TableViewCell
        
        for i in 0...wantedPeoples!.nameArray.count {
            
            if indexPath.row == i{
                if swith{
                    cell?.numberLabel.text = wantedPeoples!.nameArray[i]
                    cell?.imageWanted.image = UIImage(named: wantedPeoples!.imageArray[i])
                    cell?.btn_box1.isHidden = true
                    
                    
                }else{
                    cell?.numberLabel.text = wantedPeoples!.nameArray[i]
                    cell?.btn_box1.isHidden = false
                    
                    if wantedPeoples!.btnStatus[indexPath.row]{
                        cell!.btn_box1.setBackgroundImage(UIImage(named: "checkBox"), for: UIControl.State.normal)
                        cell!.btn_box1.setTitle("✓", for: UIControl.State.normal)
                        cell!.btn_box1.isSelected = true
                    }else{
                        cell!.btn_box1.setBackgroundImage(UIImage(named: "checkBox"), for: UIControl.State.normal)
                        cell!.btn_box1.setTitle("◻", for: UIControl.State.normal)
                        cell!.btn_box1.isSelected = false;
                    }
                }
            }
        }
        

        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if swith{
                    
        }else{
            wantedPeoples!.btnStatus[indexPath.row] = !(wantedPeoples!.btnStatus[indexPath.row])
            tableView.reloadData()
        }
    }
    
    
    @IBAction func clearButtonWanted(_ sender: UIButton) {
        
        swith = !swith
        reloadTable(swith: swith)
        
    }
    
    func reloadTable(swith:Bool){
        buttonAddWanted.isHidden = !swith
        delteButtonWanted.isHidden = swith
        
        tableView.reloadData()
    }
    
    
    
    
    @IBAction func deliteButtonWanted(_ sender: Any) {
        
        for i in (0...((wantedPeoples!.btnStatus.count) - 1)).reversed() {
            if wantedPeoples!.btnStatus[i] == true {
                wantedPeoples!.btnStatus.remove(at: i)
                wantedPeoples!.imageArray.remove(at: i)
                wantedPeoples!.nameArray.remove(at: i)
            }
        }
        swith = !swith
        reloadTable(swith: swith)
            
    }
    
}
