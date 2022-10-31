//
//  DataView.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/17/22.
//

import SwiftUI

struct DataView: View {
    
    @ObservedObject var storedBuckets : BucketStore =
    BucketStore(buckets: loadJSON(from: "Buckets2022") as! [BucketListItem])
    
    @ObservedObject var gradeStore = GradeAccessDataStore(gradeData: loadJSON(from: "simpleschoolscores") as! [GradeAccess])
    var body: some View {
        NavigationView
        {
            List
            {
                Section(header: Text("Buckets"))
                {
                    ForEach (storedBuckets.buckets)
                    {
                        bucket in
                        BucketRowView(rowBucket: bucket, emoji: generateRandomEmoji(of: ""))
                    }
                }
                Section(header: Text("custom"))
                {
                    ForEach(gradeStore.gradeData.indices, id: \.self)
                    {
                        index in
                        let currentGrade = gradeStore.gradeData[index]
                        GradeAccessRowView(rowGradeAccess: currentGrade)
                    }
                }
                Section(header: Text("project data"))
                {
                    
                }
            }
        }
    }
    
    private func removeBucketItems(at offsets : IndexSet) -> Void
    {
        
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
