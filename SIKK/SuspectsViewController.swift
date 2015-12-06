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

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionSuspects.registerNib(UINib(nibName: "SuspectsCollectionViewCell", bundle: nil) , forCellWithReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: - <UICollectionViewDataSource> / <UICollectionViewDelegate> / <UICollectionViewDelegateFlowLayout> -

extension SuspectsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(collectionSuspects.bounds.size.width - 12, 250)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:SuspectsCollectionViewCell = collectionSuspects.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! SuspectsCollectionViewCell
                
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("presentSuspectDetail", sender: self)
    }
    
}
