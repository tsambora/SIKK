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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableCases.registerNib(UINib(nibName: "CasesTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: - <UITableViewDataSource> / <UITableViewDelegate> -

extension CasesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:CasesTableViewCell = tableCases.dequeueReusableCellWithIdentifier("cell") as! CasesTableViewCell
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("presentCaseDetail", sender: self)
    }

}
