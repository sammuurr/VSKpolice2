//
//  TableViewCell.swift
//  VSKpolice2
//
//  Created by Nq on 12.10.2020.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var imageWanted: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    
    @IBOutlet weak var btn_box1: UIButton!
  
}
