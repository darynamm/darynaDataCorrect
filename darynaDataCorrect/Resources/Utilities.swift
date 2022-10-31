//
//  Utilities.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/17/22.
//

import Foundation
//MARK: - Preview Values

let demoBucket : BucketListItem = BucketListItem(year: 1999, goal: "Take over the world, narf!", creature: "pinky and the brain")
let demoGrade : GradeAccess = GradeAccess( year : 2019, state : "Salt lake", math : 2, takers : 23, verbal : 23, averageGpa : 3.0, academicYears : 1.8, AcademicGPA : 3.32, englishGPA : 3.8, foreignlanguageGPA : 3.29, foreighnlanguageYears : 2.8, mathGPA : 3.05, mathYears : 3.7, scienceGPA : 3.2)

//MARK: - Internal URLS for files
let randomInfoURL = Bundle.main.url(forResource: "", withExtension: "pdf")!
let dataViolationsURL = Bundle.main.url(forResource: "", withExtension: "pdf")!

//MARK: - Helper methods for random strings
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
//MARK: - Load JSON Data from device

func loadJSON (from file : String) -> [Any]
{
    if let dataSourceURL = Bundle.main.url(forResource: file, withExtension: "json")
    {
        let data = try! Data(contentsOf: dataSourceURL)
        let decoder = JSONDecoder()
        do
        {
            if (file == "Buckets2022")
            {
                let results = try decoder.decode([BucketListItem].self, from: data)
                return results
            }
            else if (file == "simpleschoolscores")
            {
                let results = try decoder.decode([GradeAccess].self, from: data)
                return results
            }
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    return [Any]() //Major data load failure!!!!
}
