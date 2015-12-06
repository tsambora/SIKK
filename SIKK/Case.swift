//
//  Case.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

import Foundation

class Case {
    var title: String?
    var suspects: String?
    var watchers: String?
    var timeUploaded: String?
    var phaseProgress: Int?
    var casePhases: [CasePhase]?
    
    init(title: String, suspects: String, watchers: String, timeUploaded: String, phaseProgress: Int, casePhases:[CasePhase]){
        self.title = title
        self.suspects = suspects
        self.watchers = watchers
        self.timeUploaded = timeUploaded
        self.phaseProgress = phaseProgress
        self.casePhases = casePhases
    }
}