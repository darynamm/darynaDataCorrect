//
//  GradeAccessRowView.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/25/22.
//

import SwiftUI

struct GradeAccessRowView: View {
    var rowGradeAccess : GradeAccess
    var body: some View
    {
        NavigationLink(destination: GradeView(detailedGradeAccess: rowGradeAccess)) {
            HStack {
                Text(generateRandomEmoji(of: "face"))
                    .accessibilityLabel("Text for generating an emoji")
                    .accessibilityValue("The emoji that's generated")
                Spacer()
                VStack
                {
                    Text("\(rowGradeAccess.year)")
                        .accessibilityLabel("the year for the grade data")
                        .accessibilityValue("\n\(rowGradeAccess.year)")
                    Text("\(rowGradeAccess.math)")
                    Text("\(rowGradeAccess.takers)")
                    Text("\(rowGradeAccess.verbal)")
                    Text("\(rowGradeAccess.averageGpa)")
        
                }
            }
        }
    }
}

struct GradeAccessRowView_Previews: PreviewProvider
{
    static var previews: some View
    {
        GradeAccessRowView(rowGradeAccess: demoGrade)
    }
}
