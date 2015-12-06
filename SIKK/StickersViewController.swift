//
//  StickersViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class StickersViewController: UIViewController {
    
    @IBOutlet weak var collectionStickers: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionStickers.registerNib(UINib(nibName: "StickersCollectionViewCell", bundle: nil) , forCellWithReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Miscellaneous
    
    @IBAction private func dismissStickersView(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

// MARK: - <UICollectionViewDataSource> / <UICollectionViewDelegate> / <UICollectionViewDelegateFlowLayout> -

extension StickersViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(125, 125)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:StickersCollectionViewCell = collectionStickers.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! StickersCollectionViewCell
        
        return cell
    }

}

