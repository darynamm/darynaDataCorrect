//
//  BucketDetailView.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/17/22.
//

import SwiftUI

struct BucketDetailView: View {
    
    var detailedBucket : BucketListItem
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                Text("year \(detailedBucket.year)")
                Image("bucketspic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(detailedBucket.creature)
                Text(detailedBucket.goal)
            }
        }
    }
}

struct BucketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BucketDetailView(detailedBucket : demoBucket)
    }
}
