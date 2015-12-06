//
//  SuspectsCollectionViewCell.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit
import AlamofireImage

class SuspectsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var suspectPhoto: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()

        layer.cornerRadius = 2.5
        layer.masksToBounds = true
        
        suspectPhoto.layer.cornerRadius = suspectPhoto.bounds.size.width/2
        suspectPhoto.layer.masksToBounds = true
        
        let imgURL = "http://www.differencebetween.info/sites/default/files/images_articles_d7_1/muhammad.jpg"
        let urlStr : NSString = imgURL.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
        suspectPhoto?.af_setImageWithURL(NSURL(string:urlStr as String)!)
        suspectPhoto?.contentMode = UIViewContentMode.ScaleAspectFill

    }

}
