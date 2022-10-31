//
//  AddBucketListItem.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/31/22.
//

import SwiftUI

struct AddBucketListItem: View
{
    //@ObservedObject var storedBuckets : BucketStore
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
                InputField(title: "", hint: "", result: $author)
                InputField(title: "", hint: "", result: $bucketListItem)
            }
        }
        
    }
}

struct AddBucketListItem_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        AddBucketListItem()
    }
}
