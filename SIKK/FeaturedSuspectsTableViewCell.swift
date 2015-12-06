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
    @IBOutlet private weak var suspectPhoto: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewContainer.layer.cornerRadius = 2.5
        viewContainer.layer.masksToBounds = true
        viewContainer.layer.borderWidth = 2.0
        viewContainer.layer.borderColor = UIColor(red: 1, green: 0.322, blue: 0.322, alpha: 1).CGColor
        
        suspectPhoto.layer.cornerRadius = suspectPhoto.bounds.size.width/2
        suspectPhoto.layer.masksToBounds = true
        
        let imgURL = "http://www.differencebetween.info/sites/default/files/images_articles_d7_1/muhammad.jpg"
        let urlStr : NSString = imgURL.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
        suspectPhoto?.af_setImageWithURL(NSURL(string:urlStr as String)!)
        suspectPhoto?.contentMode = UIViewContentMode.ScaleAspectFill
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
