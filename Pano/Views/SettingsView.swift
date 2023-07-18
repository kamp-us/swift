//
//  SettingsView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isPreviewShows") var isPreview = true
    var body: some View {
        VStack {
            
            
            Toggle("Preview Toggle", isOn: $isPreview)
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
