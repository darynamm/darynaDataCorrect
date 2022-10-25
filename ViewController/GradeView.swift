//
//  GradeView.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/25/22.
//

import SwiftUI

struct GradeView: View
{
    var detailedGradeAccess : GradeAccess
    
    var body: some View
    {
        VStack{
            Text("Grade access item detail")
                .accessibilityLabel("Here is the title for the grade access item detail")
                .accessibilityValue("Grade access item detail")
                .padding()
            HStack
            {
                Text("year: \n\(detailedGradeAccess.year)")
                    .accessibilityLabel("the year for the detailed grade access")
                    .accessibilityValue("year:\n\(detailedGradeAccess.year)")
                VStack
                {
                    Text("state: \n\(detailedGradeAccess.state)")
                        .accessibilityLabel("the state for the detailed grade access")
                        .accessibilityValue("state:\n\(detailedGradeAccess.state)")
                    Text("math: \n\(detailedGradeAccess.math)")
                        .accessibilityLabel("the math score for the detailed grade access")
                        .accessibilityValue("math score:\n\(detailedGradeAccess.math)")
                    Text("takers: \n\(detailedGradeAccess.takers)")
                        .accessibilityLabel("the amount of takers for the detailed grade access")
                        .accessibilityValue("takers:\n\(detailedGradeAccess.takers)")
                    Text("verbal: \n\(detailedGradeAccess.verbal)")
                        .accessibilityLabel("the verbal scores for the detailed grade access")
                        .accessibilityValue("verbal scores:\n\(detailedGradeAccess.verbal)")
                    Text("averageGpa: \n\(detailedGradeAccess.averageGpa)")
                        .accessibilityLabel("the average gpa for the detailed grade access")
                        .accessibilityValue("average gpa:\n\(detailedGradeAccess.averageGpa)")
                }
            }
        }
    }
}
struct GradeView_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        GradeView(detailedGradeAccess: demoGrade)
    }
}
