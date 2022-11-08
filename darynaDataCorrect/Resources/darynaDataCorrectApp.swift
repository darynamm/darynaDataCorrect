//
//  darynaDataCorrectApp.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/11/22.
//

import SwiftUI

@main
struct darynaDataCorrectApp: App
{
    @StateObject private var storedBuckets : BucketStore =
    BucketStore(buckets: loadJSON(from: "Buckets2022") as! [BucketListItem])
    var body: some Scene
    {
        WindowGroup {
            DataView()
                .environmentObject(storedBuckets)
        }
    }
}
