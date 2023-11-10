//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Luis Carlos Catalá Martínez on 30/10/23.
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
