//
//  SettingsView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var userDefaults: UserDefaults
    
    
    var body: some View {

            List {
                //Login Section will remove
                Section {
                    Toggle("Login", isOn: $userDefaults.isUserLogin)
                } header: {
                    Text("ACCOUNT SETTINGS")
                }
                
                Section {
                    Toggle("Preview Toggle", isOn: $userDefaults.isPreview)
                } header: {
                    Text("VIEW OPTIONS")
                }
                
                Section {
                    Text("Privacy policy")
                } header: {
                    Text("ABOUT")
                }
                
                Section {
                    Toggle("Dark Theme", isOn: $userDefaults.isThemeDark)
                } header: {
                    Text("THEME SETTINGS")
                }
                
            }
            .navigationBarTitle("Test", displayMode: .inline)

    }
}
