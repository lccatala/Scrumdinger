//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Luis Carlos Catalá Martínez on 3/11/23.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                  attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                  lengthInMinutes: 10,
                  theme: .yellow),
        DailyScrum(title: "App dev",
                  attendees: ["Katie", "Gray", "Euna", "Darla"],
                  lengthInMinutes: 5,
                  theme: .orange),
        DailyScrum(title: "Web dev",
                  attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                  lengthInMinutes: 5,
                  theme: .poppy),
    ]
}
