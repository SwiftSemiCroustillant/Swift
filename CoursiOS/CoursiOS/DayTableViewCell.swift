//
//  DayTableViewCell.swift
//  CoursiOS
//
//  Created by Anthony Cordani on 15/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import UIKit

class DayTableViewCell: UITableViewCell, UITableViewDelegate {

    
    @IBOutlet weak var DayLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
