//
//  EntryView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct EntryView: View {
    @State var currentView: TabType = .home
    
    var body: some View {
        VStack {
            switch currentView {
            case .home:
                HomeView()
            case .addPost:
                AddPostView()
            case .profile:
                ProfileView()
            }
            
            Spacer()
            
            TabbarView(currentView: $currentView)
        }
    }
}



