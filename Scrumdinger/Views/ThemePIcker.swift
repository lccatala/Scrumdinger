//
//  ThemePIcker.swift
//  Scrumdinger
//
//  Created by Luis Carlos Catalá Martínez on 9/11/23.
//

import SwiftUI

struct ThemePIcker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    ThemePIcker(selection: .constant(.periwinkle))
}
