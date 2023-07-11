//
//  KampUSApp.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import SwiftUI

@main
struct KampUSApp: App {
    @StateObject var dummy = DummyData()
    
    var body: some Scene {
        WindowGroup {

                TabView {
                    
                    HomeView()
                        .environmentObject(dummy)
                        .tabItem {
                            Label("Home", systemImage: "house")
                                .navigationTitle("Home")
                        }

                    AddPostView()
                        .tabItem {
                            Label("Add Post", systemImage: "plus.app")
                                .navigationTitle("Home")
                        }

                    ProfileView()
                        .environmentObject(dummy)
                        .tabItem {
                            Label("Profile", systemImage: "person")
                                .navigationTitle("Profile")
                        }

                }
                .environmentObject(dummy)
                .accentColor(Color(uiColor: UIColor.label))
            
        }
    }
    
}
