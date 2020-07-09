//
//  MTVCell.swift
//  ios-hw-5-p2
//
//  Created by بدرية موسى العجمي on 7/9/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import UIKit

class MTVCell: UITableViewCell {
    @IBOutlet weak var MovieImage: UIImageView!
    @IBOutlet weak var MovieLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
