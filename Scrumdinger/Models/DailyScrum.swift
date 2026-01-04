//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Jaimin on 02/12/25.
//

import Foundation
import ThemeKit

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(title: String, attendees: [String], lengthInMinutes: Int, theme: Theme){
        self.id = UUID()
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init (id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}
