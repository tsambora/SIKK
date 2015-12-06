//
//  FeaturedViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class FeaturedViewController: UIViewController {
    
    @IBOutlet private weak var tableFeatured: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableFeatured.registerNib(UINib(nibName: "FeaturedTableViewHeaderCell", bundle: nil), forHeaderFooterViewReuseIdentifier: "headerCell")
        tableFeatured.registerNib(UINib(nibName: "FeaturedStuffsTableViewCell", bundle: nil), forCellReuseIdentifier: "stuffCell")
        tableFeatured.registerNib(UINib(nibName: "CasesTableViewCell", bundle: nil), forCellReuseIdentifier: "caseCell")
        tableFeatured.registerNib(UINib(nibName: "FeaturedSuspectsTableViewCell", bundle: nil), forCellReuseIdentifier: "suspectCell")
        tableFeatured.registerNib(UINib(nibName: "FeaturedTriviasTableViewCell", bundle: nil), forCellReuseIdentifier: "triviaCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: - <UITableViewDataSource> / <UITableViewDelegate> -

extension FeaturedViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section){
            case 0:
                return hotCases.count
            case 1:
                return 3
            case 2:
                return 2
            case 3:
                return 1
            default:
                return 1
        }
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header:FeaturedTableViewHeaderCell = tableFeatured.dequeueReusableHeaderFooterViewWithIdentifier("headerCell") as! FeaturedTableViewHeaderCell
        
        switch (section){
            case 0:
                header.labelTitle.text = "Pilihan Editor"
                break
            case 1:
                header.labelTitle.text = "Top Cases"
                break
            case 2:
                header.labelTitle.text = "Top Suspects"
                break
            case 3:
                header.labelTitle.text = "Trivia"
                break
            default:
                break
        }
        
        return header
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch (indexPath.section){
            case 0:
                let cell:FeaturedStuffsTableViewCell = tableFeatured.dequeueReusableCellWithIdentifier("stuffCell") as! FeaturedStuffsTableViewCell
                cell.labelName.text = hotCases[indexPath.row].title
                cell.labelDesc.text = hotCases[indexPath.row].desc
                return cell
            case 1:
                let cell:CasesTableViewCell = tableFeatured.dequeueReusableCellWithIdentifier("caseCell") as! CasesTableViewCell
                cell.labelTitle.text = cases[indexPath.row].title
                cell.labelSuspects.text = cases[indexPath.row].suspects
                cell.labelWatchers.text = cases[indexPath.row].watchers
                cell.labelTimeUploaded.text = cases[indexPath.row].timeUploaded
                return cell
            case 2:
                let cell:FeaturedSuspectsTableViewCell = tableFeatured.dequeueReusableCellWithIdentifier("suspectCell") as! FeaturedSuspectsTableViewCell
                cell.labelBounty.text = suspects[indexPath.row].bounty
                cell.labelDesc.text = "\(suspects[indexPath.row].name!), \(suspects[indexPath.row].title!)"
                
                let imgURL = "http://www.differencebetween.info/sites/default/files/images_articles_d7_1/muhammad.jpg"
                let urlStr : NSString = imgURL.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
                cell.suspectPhoto?.af_setImageWithURL(NSURL(string:urlStr as String)!)
                cell.suspectPhoto?.contentMode = UIViewContentMode.ScaleAspectFill
                return cell
            case 3:
                let cell:FeaturedTriviasTableViewCell = tableFeatured.dequeueReusableCellWithIdentifier("triviaCell") as! FeaturedTriviasTableViewCell
                cell.labelTrivia.text = trivias[indexPath.row]
                return cell
            default:
                let cell:FeaturedStuffsTableViewCell = tableFeatured.dequeueReusableCellWithIdentifier("stuffCell") as! FeaturedStuffsTableViewCell
                return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch (indexPath.section){
            case 0:
                return CGFloat(300)
            case 1:
                return CGFloat(100)
            case 2:
                return CGFloat(250)
            case 3:
                return CGFloat(300)
            default:
                return 1
        }
    }
    
}
