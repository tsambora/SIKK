//
//  CasesTableViewCell.swift
//  SIKK
//
//  Created by Tino Sambora on 12/4/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class CasesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSuspects: UILabel!
    @IBOutlet weak var labelWatchers: UILabel!
    @IBOutlet weak var labelTimeUploaded: UILabel!
    @IBOutlet weak var imageBadge: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
