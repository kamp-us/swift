//
//  TabbarView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct TabbarView: View {
    @AppStorage("IS_USER_LOGIN") var isUserLogin = false
    
    @State var goToAddView: Bool = false
    @Binding var currentView: Int
    @State private var selected: Int = 1
    
    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 2) {
                Image(systemName: "house.fill")
                Text("Home")
                    .font(.system(size: 10))
            }
            .opacity(selected == 1 ? 1 : 0.5)
            .onTapGesture {
                currentView = 1
                selected = 1
            }
            Spacer()
            VStack(spacing: 2) {
                Image(systemName: "plus.app.fill")
                Text("Add Post")
                    .font(.system(size: 10))
            }
            .opacity(0.5)
            .onTapGesture {
                goToAddView = true
            }
            Spacer()
        
            VStack(spacing: 2) {
                Image(systemName: "person.fill")
                Text("Profile")
                    .font(.system(size: 10))
            }
            .opacity(selected == 3 ? 1 : 0.5)
            .onTapGesture {
                currentView = 2
                selected = 3
            }
            Spacer()

        }
        .font(.system(size: 25))
        .sheet(isPresented: $goToAddView) {
            if isUserLogin {
                AddPostView()
            } else {
                LoginRegisterView()
                    .presentationDetents([.fraction(0.70)])
            }
        }//Sheet end
    }
}
