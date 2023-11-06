//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Luis Carlos Catalá Martínez on 3/11/23.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
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

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}
