//
//  SuspectsViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class SuspectsViewController: UIViewController {
    
    @IBOutlet weak var collectionSuspects: UICollectionView!
    var suspectIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionSuspects.registerNib(UINib(nibName: "SuspectsCollectionViewCell", bundle: nil) , forCellWithReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "presentSuspectDetail") {
            let viewController:SuspectDetailViewController = segue.destinationViewController as! SuspectDetailViewController
            viewController.suspectDetail = suspects[suspectIndex!]
            viewController.suspectIndex = suspectIndex
        }
    }
    
}

// MARK: - <UICollectionViewDataSource> / <UICollectionViewDelegate> / <UICollectionViewDelegateFlowLayout> -

extension SuspectsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return suspects.count
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(collectionSuspects.bounds.size.width - 12, 250)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:SuspectsCollectionViewCell = collectionSuspects.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! SuspectsCollectionViewCell
        cell.labelBounty.text = suspects[indexPath.row].bounty
        cell.labelDesc.text = "\(suspects[indexPath.row].name!), \(suspects[indexPath.row].title!)"
        
        let imgURL = "http://www.differencebetween.info/sites/default/files/images_articles_d7_1/muhammad.jpg"
        let urlStr : NSString = imgURL.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
        cell.suspectPhoto?.af_setImageWithURL(NSURL(string:urlStr as String)!)
        cell.suspectPhoto?.contentMode = UIViewContentMode.ScaleAspectFill
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        suspectIndex = indexPath.row
        performSegueWithIdentifier("presentSuspectDetail", sender: self)
    }
    
}
