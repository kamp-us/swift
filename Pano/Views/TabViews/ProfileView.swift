//
//  ProfileView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var dummy: DummyData
    
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
                NavigationLink {
                    SettingsView()
                } label: {
                    Image(systemName: "gearshape")
                        .font(.system(size:22))
                }

            }
            
        }
        
    }
}
