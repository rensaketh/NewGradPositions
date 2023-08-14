//
//  JobInfo.swift
//  NewGradPositions
//
//  Created by Max Peng on 8/12/23.
//

import Foundation

struct JobInfo: Identifiable {
    let id: UUID
    var role: String
    var company: String
    var favorite: Bool
    var theme: Theme
    
    init(id: UUID = UUID(), role: String, company: String, favorite: Bool, theme: Theme) {
        self.id = id
        self.role = role
        self.company = company
        self.favorite = favorite
        self.theme = theme
    }
}

extension JobInfo {
    static let sampleData: [JobInfo] =
    [
        JobInfo(role: "Software Development Engineer",
                company: "Amazon",
                favorite: true,
                theme: .seafoam),
        JobInfo(role: "Software Engineer",
                company: "Apple",
                favorite: false,
                theme: .sky),
        JobInfo(role: "Data Scientist",
                company: "Tesla",
                favorite: true,
                theme: .teal)
    ]
}
