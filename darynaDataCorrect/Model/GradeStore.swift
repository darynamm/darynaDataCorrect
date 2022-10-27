//
//  GradeStore.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/25/22.
//

import Foundation

import Combine

class GradeStore : ObservableObject
{
    @Published var grades : [GradeListItem]
    init(grades : [GradeListItem])
    {
        self.grades = grades
    }
}
