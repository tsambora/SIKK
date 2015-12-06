//
//  SuspectStickersViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit
import MZFormSheetPresentationController

class SuspectStickersViewController: UIViewController, StickersViewViewControllerDelegate {
        
    @IBOutlet private weak var tablePost: UITableView!
    @IBOutlet private weak var buttonAddSticker: UIButton!
    var suspectIndex: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablePost.registerNib(UINib(nibName: "SuspectStickersTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addSticker(sender: UIButton){
        
        let stickersViewController = self.storyboard!.instantiateViewControllerWithIdentifier("StickersViewController") as! StickersViewController
        stickersViewController.suspectIndex = suspectIndex
        stickersViewController.delegate = self
        let formSheetController = MZFormSheetPresentationViewController(contentViewController: stickersViewController)
        formSheetController.presentationController?.contentViewSize = CGSizeMake(self.view.bounds.width - 15, 400)
        formSheetController.presentationController?.shouldDismissOnBackgroundViewTap = true
        
        self.presentViewController(formSheetController, animated: true, completion: nil)

    }
    
    func updateViews() {
        tablePost.reloadData()
    }
    
}

// MARK: - <UITableViewDataSource> / <UITableViewDelegate> -

extension SuspectStickersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:SuspectStickersTableViewCell = tablePost.dequeueReusableCellWithIdentifier("cell") as! SuspectStickersTableViewCell
        
        switch (indexPath.row){
        case 0:
            cell.imageSticker.image = UIImage(named: "sticker_brick")
            cell.labelNum?.text = "\(suspects[suspectIndex!].stickerValues![0])"
            break
        case 1:
            cell.imageSticker.image = UIImage(named: "sticker_fire")
            cell.labelNum?.text = "\(suspects[suspectIndex!].stickerValues![1])"
            break
        case 2:
            cell.imageSticker.image = UIImage(named: "sticker_halloween")
            cell.labelNum?.text = "\(suspects[suspectIndex!].stickerValues![2])"
            break
        case 3:
            cell.imageSticker.image = UIImage(named: "sticker_heart")
            cell.labelNum?.text = "\(suspects[suspectIndex!].stickerValues![3])"
            break
        case 4:
            cell.imageSticker.image = UIImage(named: "sticker_mouse")
            cell.labelNum?.text = "\(suspects[suspectIndex!].stickerValues![4])"
            break
        case 5:
            cell.imageSticker.image = UIImage(named: "sticker_poop")
            cell.labelNum?.text = "\(suspects[suspectIndex!].stickerValues![5])"
            break
        default:
            break
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 83
    }
        
}
