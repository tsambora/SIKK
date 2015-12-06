//
//  Data.swift
//  SIKK
//
//  Created by Tino Sambora on 12/6/15.
//  Copyright © 2015 Senyum Manis. All rights reserved.
//

let hotCase1 = HotCase(title: "Kasus 1", desc: "Summary 1")
let hotCase2 = HotCase(title: "Kasus 2", desc: "Summary 2")
let hotCase3 = HotCase(title: "Kasus 3", desc: "Summary 3")
let hotCase4 = HotCase(title: "Kasus 4", desc: "Summary 4")
let hotCases = [hotCase1, hotCase2, hotCase3, hotCase4]

let casePhase1 = CasePhase(title: "Penetapan", desc: "Penetapan")
let casePhase2 = CasePhase(title: "Putusan", desc: "Putusan")
let casePhase3 = CasePhase(title: "Kasasi", desc: "Kasasi")
let casePhase4 = CasePhase(title: "Putusan Kasasi", desc: "Putusan Kasasi")

let casePhases1 = [casePhase1, casePhase2, casePhase3, casePhase4]
let casePhases2 = [casePhase1, casePhase2, casePhase3]
let casePhases3 = [casePhase1, casePhase2]
let casePhases4 = [casePhase1]

let case1 = Case(title: "Kasus 1", suspects: "Setya Novanto", watchers: "1452", timeUploaded: "3 days ago", phaseProgress: 2, casePhases: casePhases4)
let case2 = Case(title: "Kasus 2", suspects: "Setya Novanto", watchers: "1452", timeUploaded: "3 days ago", phaseProgress: 1, casePhases: casePhases3)
let case3 = Case(title: "Kasus 3", suspects: "Setya Novanto", watchers: "1452", timeUploaded: "3 days ago", phaseProgress: 3, casePhases: casePhases2)
let case4 = Case(title: "Kasus 4", suspects: "Setya Novanto", watchers: "1452", timeUploaded: "3 days ago", phaseProgress: 4, casePhases: casePhases1)
let case5 = Case(title: "Kasus 5", suspects: "Setya Novanto", watchers: "1452", timeUploaded: "3 days ago", phaseProgress: 1, casePhases: casePhases4)
let case6 = Case(title: "Kasus 6", suspects: "Setya Novanto", watchers: "1452", timeUploaded: "3 days ago", phaseProgress: 4, casePhases: casePhases3)
let case7 = Case(title: "Kasus 7", suspects: "Setya Novanto", watchers: "1452", timeUploaded: "3 days ago", phaseProgress: 4, casePhases: casePhases2)
let case8 = Case(title: "Kasus 8", suspects: "Setya Novanto", watchers: "1452", timeUploaded: "3 days ago", phaseProgress: 4, casePhases: casePhases1)
let cases = [case1, case2, case3, case4, case5, case6, case7, case8]

let trivia1 = "Dari 43 kasus korupsi yang diselidiki Polri, sebanyak 22 kasus disidik dan 15 kasus masuk pengadilan."
let trivias = [trivia1]

var stickerValues1 = [33, 100, 70, 50, 82, 44]
var stickerValues2 = [100, 120, 300, 201, 71, 92]
var stickerValues3 = [700, 623, 551, 89, 301, 707]

let suspect1 = Suspect(name: "Setya Novanto", title: "Ketua DPR RI", bounty: "Rp1.000.000.000.000", imgURL: "", info: "", cases: "", stickerValues: stickerValues3)
let suspect2 = Suspect(name: "Setya Novanto", title: "Ketua DPR RI", bounty: "Rp1.000.000.000.000", imgURL: "", info: "", cases: "", stickerValues: stickerValues2)
let suspect3 = Suspect(name: "Setya Novanto", title: "Ketua DPR RI", bounty: "Rp1.000.000.000.000", imgURL: "", info: "", cases: "", stickerValues: stickerValues1)
let suspect4 = Suspect(name: "Setya Novanto", title: "Ketua DPR RI", bounty: "Rp1.000.000.000.000", imgURL: "", info: "", cases: "", stickerValues: stickerValues3)
let suspect5 = Suspect(name: "Setya Novanto", title: "Ketua DPR RI", bounty: "Rp1.000.000.000.000", imgURL: "", info: "", cases: "", stickerValues: stickerValues2)
let suspect6 = Suspect(name: "Setya Novanto", title: "Ketua DPR RI", bounty: "Rp1.000.000.000.000", imgURL: "", info: "", cases: "", stickerValues: stickerValues1)
let suspect7 = Suspect(name: "Setya Novanto", title: "Ketua DPR RI", bounty: "Rp1.000.000.000.000", imgURL: "", info: "", cases: "", stickerValues: stickerValues3)
let suspect8 = Suspect(name: "Setya Novanto", title: "Ketua DPR RI", bounty: "Rp1.000.000.000.000", imgURL: "", info: "", cases: "", stickerValues: stickerValues2)
let suspects = [suspect1, suspect2, suspect3, suspect4, suspect5, suspect6, suspect7, suspect8]