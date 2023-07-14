//
//  AddPostView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 9.07.2023.
//

import SwiftUI

struct AddPostView: View {
    @State private var title: String = "Sample Title But a Little Bit Long"
    @State private var url: String = "https://example.com"
    @State private var authorName: String = "John Doe"
    @State private var numberOfComments: Int = 5
    @State private var createAtText: String = "July 9, 2023"
    
    var body: some View {
        VStack {
            Text("Add post view")
        }
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
    }
}
