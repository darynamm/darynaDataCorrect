//
//  AddBucketListItem.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/31/22.
//

import SwiftUI

struct AddBucketListItemView: View
{
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var storedBuckets : BucketStore
    @State var author : String = ""
    @State var bucketListItem : String = ""
    var body: some View
    {
        Form
        {
            Section(header: Text("Make a bucket list item!!!")
                .font(.largeTitle)
                .foregroundColor(.purple)
                .multilineTextAlignment(.center))
            {
                InputField(title: "creature", hint: "who made this goal", result: $author)
                InputField(title: "the goal!!!!", hint: "what do you wanna do?", result: $bucketListItem)
            }
            if (!author.isEmpty && !bucketListItem.isEmpty)
            {
                Button("add me to the data store", action: addBucketItemToDataStore)
                    .padding(.horizontal,50)
            }
        }
        .navigationTitle("Adding a bucket list item")
    }
    
    private func addBucketItemToDataStore() -> Void
    {
        let year = Calendar.current.component(.year, from: Date())
        let newBucketListItem : BucketListItem = BucketListItem(year: year, goal: bucketListItem, creature: author)
        storedBuckets.buckets.insert(newBucketListItem, at: 0)
        
        dismiss()
    }
    
}

struct AddBucketListItem_Previews: PreviewProvider
{
    
   static var previews: some View
   {
        AddBucketListItemView()
           .environmentObject(BucketStore(buckets: loadJSON(from: "Buckets 2022") as! [BucketListItem] ))
   }
}
