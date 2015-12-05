//
//  CaseDetailViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/5/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit
import PagingMenuController

class CaseDetailViewController: UIViewController, PagingMenuControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let phase1 = self.storyboard?.instantiateViewControllerWithIdentifier("CasePhaseViewController") as! CasePhaseViewController
        let phase2 = self.storyboard?.instantiateViewControllerWithIdentifier("CasePhaseViewController") as! CasePhaseViewController
        let phase3 = self.storyboard?.instantiateViewControllerWithIdentifier("CasePhaseViewController") as! CasePhaseViewController
        
        phase1.title = "Phase 1"
        phase2.title = "Phase 2"
        phase3.title = "Phase 3"
        
        let viewControllers = [phase1, phase2, phase3]
        
        let options = PagingMenuOptions()
        options.menuHeight = 50
        options.selectedBackgroundColor = UIColor.clearColor()
        options.menuItemMode = PagingMenuOptions.MenuItemMode.Underline(height: 3, color: UIColor.redColor(), horizontalPadding: 0, verticalPadding: 0)
        
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
}
