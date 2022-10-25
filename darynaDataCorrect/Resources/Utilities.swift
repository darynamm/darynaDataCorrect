//
//  Utilities.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/17/22.
//

import Foundation
let demoBucket : BucketListItem = BucketListItem(year: 1999, goal: "Take over the world, narf!", creature: "pinky and the brain")
let demoGrade : GradeAccess = GradeAccess( Year : 2019, state : "Salt lake", math : 2, takers : 23, verbal : 23, averageGpa : 3.0)
let randomInfoURL = Bundle.main.url(forResource: "", withExtension: "pdf")!
let dataViolationsURL = Bundle.main.url(forResource: "", withExtension: "pdf")!
func generateRandomEmoji (of emojiType: String) -> String
{
    let currentEmoji : String
    
    let start : Int
    let range : Int
    
    if (emojiType == "animal")
    {
        start = 0x1f400
        range = 40
    }
    else if (emojiType == "Symbol")
    {
        start = 0x1f680
        range = 80
    }
    else if (emojiType == "face")
    {
        start = 0x1f601
        range = 79
    }
    else
    {
        start = 0x1f400
        range = 52
    }
    let unicodeValue = start + Int(arc4random_uniform(UInt32(range)))
    currentEmoji = UnicodeScalar (unicodeValue)?.description ?? "🚥"
    return currentEmoji
}

func randomString() -> String
{
    let choice = arc4random()
    if (choice % 3 == 0)
    {
        return "face"
    }
    else if (choice % 3 == 1)
    {
        return "Symbol"
    }
    else
    {
        return "animal"
    }
}
