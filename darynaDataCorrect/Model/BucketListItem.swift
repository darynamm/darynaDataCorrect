//
//  BucketListItem.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/17/22.
//

import Foundation
struct BucketListItem : Codable, Identifiable
{
    var id = UUID()
    var year : Int
    var goal : String
    var creature : String
}
