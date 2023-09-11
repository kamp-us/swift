//
//  TabbarView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct TabbarView: View {
    @EnvironmentObject var userDefaults: UserDefaults
    
    @State var goToAddView: Bool = false
    @Binding var currentView: TabType
    
    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 2) {
                Image(systemName: TabType.home.systemImageName)
                Text(TabType.home.text)
                    .font(.system(size: 10))
            }
            .opacity(currentView == .home ? 1 : 0.5)
            .onTapGesture {
                currentView = .home
            }
            Spacer()
            VStack(spacing: 2) {
                Image(systemName: TabType.addPost.systemImageName)
                Text(TabType.addPost.text)
                    .font(.system(size: 10))
            }
            .opacity(0.5)
            .onTapGesture {
                goToAddView = true
            }
            Spacer()
        
            VStack(spacing: 2) {
                Image(systemName: TabType.profile.systemImageName)
                Text(TabType.profile.text)
                    .font(.system(size: 10))
            }
            .opacity(currentView == .profile ? 1 : 0.5)
            .onTapGesture {
                currentView = .profile
            }
            Spacer()

        }
        .font(.system(size: 25))
        .sheet(isPresented: $goToAddView) {
            if userDefaults.isUserLogin {
                AddPostView()
            } else {
                AuthorizationView()
                    .presentationDetents([.fraction(0.70)])
            }
        }//Sheet end
    }
}
