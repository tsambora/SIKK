//
//  Suspect.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import Foundation

class Suspect {
    var name: String?
    var title: String?
    var bounty: String?
    var imgURL: String?
    var info: String?
    var cases: String?
    var stickerValues: [Int]?
    
    init(name: String, title: String, bounty: String, imgURL: String, info: String, cases: String, stickerValues: [Int]){
        self.name = name
        self.title = title
        self.bounty = bounty
        self.imgURL = imgURL
        self.info = info
        self.cases = cases
        self.stickerValues = stickerValues
    }
}