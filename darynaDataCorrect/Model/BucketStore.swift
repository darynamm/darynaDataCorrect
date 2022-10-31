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
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedBuckets = try? encoder.encode(buckets)
            {
                UserDefaults.standard.set(encodedBuckets, forKey: "Saved Buckets")
            }
        }
    }
    init(buckets : [BucketListItem])
    {
        
        if let storedOnDevice = UserDefaults.standard.data(forKey: "Saved Buckets")
        {
            let decoder = JSONDecoder()
            if let savedBuckets = try? decoder.decode([BucketListItem].self, from: storedOnDevice)
            {
                if (savedBuckets.count != 0)
                {
                    self.buckets = savedBuckets
                    return //early return since we r loading data from device
                }
            }
        }
        self.buckets = buckets 
    }
}
