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
    
    
    var body: some View {
        NavigationView
        {
            List
            {
                Section(header: Text("Buckets"))
                {
                    
                }
                Section(header: Text("custom"))
                {
                    
                }
                Section(header: Text("project data"))
                {
                    
                }
            }
        }
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
