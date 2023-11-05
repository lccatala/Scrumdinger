//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Luis Carlos Catalá Martínez on 5/11/23.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NavigationStack {
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
