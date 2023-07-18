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
    
    var body: some View {
        VStack {
            Toggle("Preview Toggle", isOn: $isPreview)
            Toggle("Login", isOn: $isUserLogin)
            
        }
    }
}
