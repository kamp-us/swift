//
//  ProfileView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var isPresented : Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("ProfileTest")

            }
            .navigationTitle("Profile")
            .toolbar {
                Button {
                    isPresented = true
                } label: {
                    Image(systemName: "gearshape")
                        .font(.system(size:22))
                }

            }
            
        }
        .sheet(isPresented: $isPresented) {
            SettingsView()
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
