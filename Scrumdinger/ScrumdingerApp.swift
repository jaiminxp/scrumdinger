//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Jaimin on 30/11/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
