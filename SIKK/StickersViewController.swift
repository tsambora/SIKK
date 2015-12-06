//
//  StickersViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

protocol StickersViewViewControllerDelegate {
    func updateViews()
}

class StickersViewController: UIViewController {
    
    @IBOutlet weak var collectionStickers: UICollectionView!
    var suspectIndex: Int?
    
    var delegate: StickersViewViewControllerDelegate?
    
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
        return 6
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(125, 125)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:StickersCollectionViewCell = collectionStickers.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! StickersCollectionViewCell
        
        switch (indexPath.row){
            case 0:
                cell.imageSticker.image = UIImage(named: "sticker_brick")
                cell.labelName?.text = "Bata"
                break
            case 1:
                cell.imageSticker.image = UIImage(named: "sticker_fire")
                cell.labelName?.text = "Api"
                break
            case 2:
                cell.imageSticker.image = UIImage(named: "sticker_halloween")
                cell.labelName?.text = "Tengkorak"
                break
            case 3:
                cell.imageSticker.image = UIImage(named: "sticker_heart")
                cell.labelName?.text = "Patah Hati"
                break
            case 4:
                cell.imageSticker.image = UIImage(named: "sticker_mouse")
                cell.labelName?.text = "Tikus"
                break
            case 5:
                cell.imageSticker.image = UIImage(named: "sticker_poop")
                cell.labelName?.text = "Kotoran"
                break
            default:
                break
        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        suspects[suspectIndex!].stickerValues![indexPath.row]++
        print(suspects[suspectIndex!].stickerValues![indexPath.row])
        delegate?.updateViews()
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

