//
//  SettingsView.swift
//  NotesApp
//
//  Created by Илья Казначеев on 29.04.2023.
//

import SwiftUI


struct SettingsView: View {
    
    @EnvironmentObject var settings: NoteSettings
    
    var body: some View {
        List {
            Section {
                HStack {
                    Text("Compact cells")
                    Spacer()
                    Toggle("", isOn: $settings.on)
                }
            }
        }
        .environmentObject(settings)
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
