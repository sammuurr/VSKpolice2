//
//  TableViewControllerCriminalCases.swift
//  VSKpolice2
//
//  Created by Nq on 19.10.2020.
//

import UIKit

class TableViewControllerCriminalCases: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 55
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultsCell", for: indexPath) as? TableViewCellResultsCell

        if indexPath.row == 0{
            cell?.resultText.font = UIFont(name: "System-Semibold", size: 21)
            cell?.resultText.text = "Results (54)"
            
        }else{
            cell?.resultText.font = UIFont(name: "System", size: 18)
            cell?.resultText.text = "20190101-000002"
        }

        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        }else{
            let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "criminalcaseviewshow")
            self.show(vc as! UIViewController, sender: vc)
        }
    }
    
}
