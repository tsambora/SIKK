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
    
    var caseDetail: Case!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var viewControllers: [UIViewController] = []
        
        for index in 0...(caseDetail.casePhases!.count - 1) {
            let phase = self.storyboard?.instantiateViewControllerWithIdentifier("CasePhaseViewController") as! CasePhaseViewController
            phase.title = caseDetail.casePhases![index].title
            phase.labelDescText = caseDetail.casePhases![index].desc
            viewControllers.append(phase)
        }
        
        let options = PagingMenuOptions()
        options.menuHeight = 50
        options.selectedBackgroundColor = UIColor.clearColor()
        options.menuItemMode = PagingMenuOptions.MenuItemMode.Underline(height: 3, color: UIColor(red: 1, green: 0.322, blue: 0.322, alpha: 1), horizontalPadding: 0, verticalPadding: 0)
        
        let pagingMenuController = self.childViewControllers.first as! PagingMenuController
        pagingMenuController.delegate = self
        pagingMenuController.setup(viewControllers: viewControllers, options: options)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Action methods
    
    @IBAction private func watchCase(sender: UIButton){
        let promptWatch = UIAlertController(title: "You are now watching this case.", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        promptWatch.addAction(UIAlertAction(title: "Continue", style: .Default, handler: { (action: UIAlertAction!) in
        }))
        self.presentViewController(promptWatch, animated: true, completion: nil)
    }

    @IBAction private func protestCase(sender: UIButton){
        let promptProtest = UIAlertController(title: "Protes: ", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        promptProtest.addAction(UIAlertAction(title: "Keterlambatan", style: .Default, handler: { (action: UIAlertAction!) in
            let promptSuccess = UIAlertController(title: "Protes terkirim.", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
            promptSuccess.addAction(UIAlertAction(title: "Continue", style: .Default, handler: { (action: UIAlertAction!) in
            }))
            self.presentViewController(promptSuccess, animated: true, completion: nil)
        }))
        promptProtest.addAction(UIAlertAction(title: "Ketidakpuasan", style: .Default, handler: { (action: UIAlertAction!) in
            let promptSuccess = UIAlertController(title: "Protes terkirim.", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
            promptSuccess.addAction(UIAlertAction(title: "Continue", style: .Default, handler: { (action: UIAlertAction!) in
            }))
            self.presentViewController(promptSuccess, animated: true, completion: nil)
        }))
        promptProtest.addAction(UIAlertAction(title: "Batal", style: .Cancel, handler: { (action: UIAlertAction!) in
        }))
        self.presentViewController(promptProtest, animated: true, completion: nil)
    }
    
    // MARK: - PagingMenuControllerDelegate
    
    func willMoveToMenuPage(page: Int) {
    }
    
    func didMoveToMenuPage(page: Int) {
    }
    
    // MARK: - Miscellaneous
    
    @IBAction private func dismissCaseDetail(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
