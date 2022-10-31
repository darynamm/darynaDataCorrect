//
//  AddBucketListItem.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/31/22.
//

import SwiftUI

struct AddBucketListItem: View
{
    @Environment(\.dismiss) var dismiss
    @ObservedObject var storedBuckets : BucketStore
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
        
    }
    
    private func addBucketItemToDataStore() -> Void
    {
        let year = Calendar.current.component(.year, from: Date())
        let newBucketListItem : BucketListItem = BucketListItem(year: year, goal: bucketListItem, creature: author)
        storedBuckets.buckets.insert(newBucketListItem, at: 0)
    }
}

//struct AddBucketListItem_Previews: PreviewProvider
//{
    
  //  static var previews: some View
  //  {
       // AddBucketListItem()
  //  }
//}
