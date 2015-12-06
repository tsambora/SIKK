//
//  SuspectStickersViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class SuspectStickersViewController: UIViewController {
    
    @IBOutlet private weak var tablePost: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tablePost.registerNib(UINib(nibName: "SuspectStickersTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: - <UITableViewDataSource> / <UITableViewDelegate> -

extension SuspectStickersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:SuspectStickersTableViewCell = tablePost.dequeueReusableCellWithIdentifier("cell") as! SuspectStickersTableViewCell
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 59
    }
        
}
