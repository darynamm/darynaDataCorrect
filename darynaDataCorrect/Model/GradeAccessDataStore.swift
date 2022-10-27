//
//  GradeAccessDataStore.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/27/22.
//

import Foundation
import Combine

class GradeAccessDataStore : ObservableObject
{
    @Published var gradeData : [GradeAccess]
    init (gradeData : [GradeAccess])
    {
        self.gradeData = gradeData
    }
}
