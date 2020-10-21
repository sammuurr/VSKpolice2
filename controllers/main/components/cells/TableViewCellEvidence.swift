//
//  TableViewCellEvidence.swift
//  VSKpolice2
//
//  Created by Nq on 20.10.2020.
//

import UIKit

class TableViewCellEvidence: UITableViewCell {

    @IBOutlet weak var numberTextLabel: UILabel!
    @IBOutlet weak var textTextLabel: UILabel!
    @IBOutlet weak var fullViewButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
