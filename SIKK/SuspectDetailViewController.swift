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

    override func viewDidLoad() {
        super.viewDidLoad()

        let phase1 = self.storyboard?.instantiateViewControllerWithIdentifier("SuspectInfoViewController") as! SuspectInfoViewController
        let phase2 = self.storyboard?.instantiateViewControllerWithIdentifier("SuspectInfoViewController") as! SuspectInfoViewController
        let phase3 = self.storyboard?.instantiateViewControllerWithIdentifier("SuspectStickersViewController") as! SuspectStickersViewController
        
        phase1.title = "Information"
        phase2.title = "Cases"
        phase3.title = "Stickers"
        
        let viewControllers = [phase1, phase2, phase3]
        
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
