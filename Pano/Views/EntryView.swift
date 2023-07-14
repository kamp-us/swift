//
//  EntryView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct EntryView: View {
    @State var currentView: Int = 1
    var body: some View {
        VStack {
            if currentView == 1 {
                HomeView()
            } else if currentView == 2 {
                ProfileView()
            } else {
                HomeView()
            }
            
         Spacer()
            
            TabbarView(currentView: $currentView)
        }
    }
}


