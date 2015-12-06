//
//  SuspectInfoViewController.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import UIKit

class SuspectInfoViewController: UIViewController {
    
    @IBOutlet weak var labelDesc: UILabel!
    var labelDescText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelDesc?.text = labelDescText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
