//
//  SettingsView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isPreviewShows") var isPreview = true
    @AppStorage("IS_USER_LOGIN") var isUserLogin = false
    
    @Binding var isPresentedSettings: Bool
    
    var body: some View {
        NavigationStack {
            List {
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
                
            }
            .navigationBarTitle("Test", displayMode: .inline)
            .navigationBarItems(leading:Button(action: {isPresentedSettings = false}, label: {Image(systemName: "multiply").font(.system(size: 20))}))
        }
        .foregroundColor(.primary)
    }
}
