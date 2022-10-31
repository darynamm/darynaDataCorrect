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
    @Published var grades : [GradeAccess]
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedGrades = try? encoder.encode(grades)
            {
                UserDefaults.standard.set(encodedGrades, forKey: "Saved Grades")
            }
        }
    }
    
    init(grades : [GradeAccess])
    {
        if let storedOnDevice = UserDefaults.standard.data(forKey: "Saved grades")
        {
            let decoder = JSONDecoder()
            if let savedGrades = try? decoder.decode([GradeAccess].self, from: storedOnDevice)
            {
                if (savedGrades.count != 0)
                {
                    self.grades = savedGrades
                    return
                }
            }
            
        }
        self.grades = grades
    }
}
