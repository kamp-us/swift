//
//  ProfileView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var dummy: DummyData
    
    @State var isPresentedSettings : Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                List(dummy.posts) { post in
                    if post.userID == dummy.currentUser.id {
                        HomePanoItemView(item: post)
                    }
                }
                .listStyle(.plain)
            }//VStack end
            .navigationTitle("Profile")
            .toolbar {
                Button {
                    isPresentedSettings = true
                } label: {
                    Image(systemName: "gearshape")
                        .font(.system(size:22))
                }

            }
            
        }
        .sheet(isPresented: $isPresentedSettings) {
            SettingsView(isPresentedSettings: $isPresentedSettings)
        }
        
    }
}
