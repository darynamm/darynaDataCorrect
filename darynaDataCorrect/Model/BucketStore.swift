//
//  BucketStore.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/25/22.
//

import Foundation
import Combine

class BucketStore : ObservableObject
{
    @Published var buckets : [BucketListItem]
    init(buckets : [BucketListItem])
    {
        self.buckets = buckets 
    }
}
