//
//  FeaturedSuspectsTableViewCell.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class FeaturedSuspectsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var suspectPhoto: UIImageView!
    @IBOutlet weak var labelBounty: UILabel!
    @IBOutlet weak var labelDesc: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewContainer.layer.cornerRadius = 2.5
        viewContainer.layer.masksToBounds = true
        viewContainer.layer.borderWidth = 2.0
        viewContainer.layer.borderColor = UIColor(red: 1, green: 0.322, blue: 0.322, alpha: 1).CGColor
        
        suspectPhoto.layer.cornerRadius = suspectPhoto.bounds.size.width/2
        suspectPhoto.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
