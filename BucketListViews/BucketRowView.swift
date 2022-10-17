//
//  BucketRowView.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/17/22.
//

import SwiftUI

struct BucketRowView: View {
    
    var rowBucket : BucketListItem
    var emoji : String
    var body: some View
    {
        
        HStack
        {
            Spacer()
            Text(emoji)
                .font(.largeTitle)
            Spacer()
            VStack
            {
                Text("Year: \(String(rowBucket.year))")
                Text(rowBucket.creature)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
        }
    
    }
}

struct BucketRowView_Previews: PreviewProvider {
    static var previews: some View {
        BucketRowView(rowBucket : demoBucket, emoji : generateRandomEmoji (of: ""))
    }
}
