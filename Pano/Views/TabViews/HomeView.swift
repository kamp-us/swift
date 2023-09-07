//
//  ContentView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var userDefaults: UserDefaults
    @EnvironmentObject var data: DummyData
    
    @State private var showShearchLogin: Bool = false
    
    var body: some View {
        
        
        NavigationStack {
            
            VStack {
                List(data.posts) { item in
                    NavigationLink {
                        DetailsView(item: item)
                    } label: {
                        HomePanoItemView(item: item)
                    }                       
                }
                .listStyle(.plain)
                
            }
            .navigationTitle("Home")
            .toolbar {
                
                Menu {
                    Button {
                        //Menu Button Action
                    } label: {
                        Text("Filter1")
                    }
                    
                    Button {
                        //Menu Button Action
                    } label: {
                        Text("Filter2")
                    }
                    
                    Button {
                        //Menu Button Action
                    } label: {
                        Text("Filter3")
                    }
                    
                } label: {
                    Image(systemName: "line.3.horizontal.decrease")
                        .font(.system(size:23))
                }
                
                if userDefaults.isUserLogin {
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size:17))
                    }

                } else {
                    Button {
                        showShearchLogin = true
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size:17))
                    }
                }
            }// Toolbar end
            .sheet(isPresented: $showShearchLogin) {
                AuthorizationView()
                    .presentationDetents([.fraction(0.70)])
            }
            
        }
        
        
    }
}
