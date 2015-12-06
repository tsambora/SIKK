//
//  StickersCollectionViewCell.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class StickersCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        layer.cornerRadius = 2.5
        layer.masksToBounds = true
    }

}
