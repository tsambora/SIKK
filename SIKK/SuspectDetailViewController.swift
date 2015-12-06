//
//  SuspectDetailViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit
import PagingMenuController

class SuspectDetailViewController: UIViewController, PagingMenuControllerDelegate {
    
    @IBOutlet weak var labelBounty: UILabel!
    @IBOutlet weak var labelDesc: UILabel!
    @IBOutlet weak var suspectPhoto: UIImageView!
    
    var suspectDetail: Suspect!
    var suspectIndex: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelBounty?.text = suspectDetail.bounty
        labelDesc?.text = "\(suspectDetail.name!), \(suspectDetail.title!)."
        
        suspectPhoto.layer.cornerRadius = suspectPhoto.bounds.size.width/2
        suspectPhoto.layer.masksToBounds = true
        let imgURL = "http://www.differencebetween.info/sites/default/files/images_articles_d7_1/muhammad.jpg"
        let urlStr : NSString = imgURL.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
        suspectPhoto?.af_setImageWithURL(NSURL(string:urlStr as String)!)
        suspectPhoto?.contentMode = UIViewContentMode.ScaleAspectFill
        
        var viewControllers: [UIViewController] = []
        
        for index in 0...2 {
            switch (index){
                case 0:
                    let phase = self.storyboard?.instantiateViewControllerWithIdentifier("SuspectInfoViewController") as! SuspectInfoViewController
                    phase.title = "Informasi"
                    phase.labelDescText = suspectDetail.info
                    viewControllers.append(phase)
                    break
                case 1:
                    let phase = self.storyboard?.instantiateViewControllerWithIdentifier("SuspectInfoViewController") as! SuspectInfoViewController
                    phase.title = "Kasus"
                    phase.labelDescText = suspectDetail.cases
                    viewControllers.append(phase)
                    break
                case 2:
                    let phase = self.storyboard?.instantiateViewControllerWithIdentifier("SuspectStickersViewController") as! SuspectStickersViewController
                    phase.title = "Stickers"
                    phase.suspectIndex = suspectIndex
                    viewControllers.append(phase)
                    break
                default:
                    break
                }
        }
        
        let options = PagingMenuOptions()
        options.menuHeight = 50
        options.selectedBackgroundColor = UIColor.clearColor()
        options.menuDisplayMode = PagingMenuOptions.MenuDisplayMode.Standard(widthMode: PagingMenuOptions.MenuItemWidthMode.Flexible, centerItem: true, scrollingMode: PagingMenuOptions.MenuScrollingMode.ScrollEnabledAndBouces)
        options.menuItemMode = PagingMenuOptions.MenuItemMode.Underline(height: 3, color: UIColor(red: 1, green: 0.322, blue: 0.322, alpha: 1), horizontalPadding: 0, verticalPadding: 0)
        
        let pagingMenuController = self.childViewControllers.first as! PagingMenuController
        pagingMenuController.delegate = self
        pagingMenuController.setup(viewControllers: viewControllers, options: options)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - PagingMenuControllerDelegate
    
    func willMoveToMenuPage(page: Int) {
    }
    
    func didMoveToMenuPage(page: Int) {
    }
    
    // MARK: - Miscellaneous
    
    @IBAction private func dismissSuspectDetail(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
