//
//  SearchView.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    @EnvironmentObject var dummy: DummyData
    
    var body: some View {
        NavigationStack {
            List {
                Text("Test")
                
            }
            .navigationTitle("Search")
            .listStyle(.plain)
            .searchable(text: $searchText)
        }
    }
}
