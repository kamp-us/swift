//
//  DetailsView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 11.07.2023.
//

import SwiftUI
import LinkPreview

struct DetailsView: View {
    @EnvironmentObject var dummy: DummyData
    
    @State private var searchResult: String = ""
    var item: PanoHomeItem
    
    @State private var isBookmarked: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(item.title)
                
                LinkPreview(url: URL(string: item.url))
                    .fixedSize(horizontal: false, vertical: true)
                
                    Text("Posted by \(item.authorName)")
                        .font(.system(size: 14))
                
                HStack(alignment: .lastTextBaseline, spacing: 8) {
                    HStack(spacing: 2) {
                        Image(systemName: "arrow.up")
                        Text("\(item.numberOfLikes)")
                    }
                    HStack(spacing: 2) {
                        Image(systemName: "message")
                        Text("\(item.numberOfComments)")
                    }
                    HStack(spacing: 2) {
                        Image(systemName: "clock")
                        Text(item.createdAtText)
                    }
                    Spacer()
                }
                .font(.system(size: 14))
                
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.up")
                    }
                    
                    Spacer()

                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.down")
                    }
                    
                    Spacer()

                    Button {
                        
                    } label: {
                        Image(systemName: "bookmark")
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrowshape.turn.up.backward")
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }

                }
                .padding(.top, 10)
                .font(.system(size: 25))
                
            }//VStack end
            
        }//ScrollView end
        .navigationTitle("\(item.numberOfComments) Comments")
        .navigationBarTitleDisplayMode(.inline)
        .searchable(text: $searchResult, prompt: "Find in Comments")
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
        }
        
    }
}
