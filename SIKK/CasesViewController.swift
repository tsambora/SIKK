//
//  CasesViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/4/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class CasesViewController: UIViewController {
    
    @IBOutlet private weak var tableCases: UITableView!
    var caseIndex: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        tableCases.registerNib(UINib(nibName: "CasesTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "presentCaseDetail") {
            let viewController:CaseDetailViewController = segue.destinationViewController as! CaseDetailViewController
            viewController.caseDetail = cases[caseIndex!]
        }
    }
    
}

// MARK: - <UITableViewDataSource> / <UITableViewDelegate> -

extension CasesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cases.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:CasesTableViewCell = tableCases.dequeueReusableCellWithIdentifier("cell") as! CasesTableViewCell
        cell.labelTitle.text = cases[indexPath.row].title
        cell.labelSuspects.text = cases[indexPath.row].suspects
        cell.labelWatchers.text = cases[indexPath.row].watchers
        cell.labelTimeUploaded.text = cases[indexPath.row].timeUploaded
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        caseIndex = indexPath.row
        performSegueWithIdentifier("presentCaseDetail", sender: self)
    }

}
