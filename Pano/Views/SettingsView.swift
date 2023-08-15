//
//  SettingsView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isPreviewShows") var isPreview: Bool = true
    @AppStorage("IS_USER_LOGIN") var isUserLogin: Bool = false
    
    @AppStorage ("IS_THEME_DARK") var isThemeDark: Bool = false
    
    @Binding var isPresentedSettings: Bool
    
    var body: some View {
        NavigationStack {
            List {
                //Login Section will remove
                Section {
                    Toggle("Login", isOn: $isUserLogin)
                } header: {
                    Text("ACCOUNT SETTINGS")
                }
                
                Section {
                    Toggle("Preview Toggle", isOn: $isPreview)
                } header: {
                    Text("VIEW OPTIONS")
                }
                
                Section {
                    Text("Privacy policy")
                } header: {
                    Text("ABOUT")
                }
                
                Section {
                    Toggle("Dark Theme", isOn: $isThemeDark)
                } header: {
                    Text("THEME SETTINGS")
                }
                
            }
            .navigationBarTitle("Test", displayMode: .inline)
            .navigationBarItems(leading:Button(action: {isPresentedSettings = false}, label: {Image(systemName: "multiply").font(.system(size: 20))}))
        }
        .foregroundColor(.primary)
    }
}
