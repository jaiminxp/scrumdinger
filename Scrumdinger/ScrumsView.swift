//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Jaimin on 07/12/25.
//

import SwiftUI
import ThemeKit

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                }.listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button (action: {}){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
