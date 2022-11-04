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
    @State private var showAddBucketListItem : Bool = false
    @State private var searchedText : String = ""

    private var filteredBucketListResults : [BucketListItem]
    {
        if (searchedText.isEmpty)
        {
            return storedBuckets.buckets
        }
        else
        {
            return storedBuckets.buckets.filter
            {
                $0.goal.lowercased().contains(searchedText.lowercased()) ||
                $0.creature.lowercased().contains(searchedText.lowercased()) ||
                String($0.year) == searchedText
            }
        }
    }
    var body: some View {
        NavigationView
        {
            List
            {
                Section(header: Text("Buckets"))
                {
                    ForEach (filteredBucketListResults)
                    {
                        bucket in
                        BucketRowView(rowBucket: bucket, emoji: generateRandomEmoji(of: ""))
                    }
                    .onDelete(perform: removeBucketItems)
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
            .searchable(text: $searchedText)
            .navigationTitle("data and information")
            .toolbar
            {
                ToolbarItem(placement: .navigationBarLeading)
                {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Button (action: { self.showAddBucketListItem.toggle()})
                    { Image(systemName: "plus")}
                }
            }
        }
        .sheet(isPresented: $showAddBucketListItem)
        {
            AddBucketListItemView()
        }
    }
    
    private func removeBucketItems(at offsets : IndexSet) -> Void
    {
        storedBuckets.buckets.remove(atOffsets: offsets)
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
