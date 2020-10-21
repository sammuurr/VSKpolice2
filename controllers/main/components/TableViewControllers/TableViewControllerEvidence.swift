//
//  TableViewControllerEvidence.swift
//  VSKpolice2/Users/NQ/Desktop/NewUser/VSKpolice2/controllers/main/components/cells/TableViewCellEvidence.swift
//
//  Created by Nq on 20.10.2020.
//

import UIKit

class TableViewControllerEvidence: UITableViewController {

    var hideButtonsStatus:[Bool] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = CGFloat(60)
        
        for _ in 0...12 { hideButtonsStatus.append(false) }

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }

    @IBAction func hideButton(_ sender: UIButton) {
        for i in 0...12{
            if sender.tag == i {
                hideButtonsStatus[i] = !hideButtonsStatus[i]
            }
        }
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellEvidence", for: indexPath) as? TableViewCellEvidence
        
        cell?.fullViewButton.tag = indexPath.row

        print(hideButtonsStatus[indexPath.row])
        if hideButtonsStatus[indexPath.row] {
            print(hideButtonsStatus[indexPath.row])
            cell?.fullViewButton.setTitle("⇧", for: .normal)
            tableView.rowHeight = CGFloat(180)
            cell?.textTextLabel.text = """
            Ryan Adams, whose new album Prisoner is out
            this Friday, was the latest guest on Marc Maron’s
            podcast “WTF.” Adams discussed encountering
            the Rolling Stones early in his career (and talking
            penny loafers with drummer Charlie Watts), his
            struggles with addiction in the Easy Tiger era
            """
            cell?.textTextLabel.isHidden = false
            cell?.editButton.isHidden = false
        }else{
            tableView.rowHeight = CGFloat(60)
            cell?.textTextLabel.isHidden = true
            cell?.editButton.isHidden = true
            print(hideButtonsStatus[indexPath.row])
            cell?.fullViewButton.setTitle("⇩", for: .normal)

        }
        

        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        hideButtonsStatus[indexPath.row] = !hideButtonsStatus[indexPath.row]
        tableView.reloadData()
    }
}
