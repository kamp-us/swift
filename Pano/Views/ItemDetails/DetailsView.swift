//
//  DetailsView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 11.07.2023.
//

import SwiftUI
import LinkPreview

struct DetailsView: View {
    
    @State private var searchResult: String = ""
    var item: Post
    
    @State private var isBookmarked: Bool = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text(item.content)
                    .padding(.vertical, 3)
                    .padding(.horizontal, 10)
                    .font(.system(size: 14))
                    .background {
                        Color(.gray).opacity(0.3)
                    }
                    .cornerRadius(20)
                
                Text(item.title)
                
                LinkPreview(url: URL(string: item.url ?? ""))
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("Posted by \(item.owner.userName ?? "Unkown")")
                        .font(.system(size: 14))
                
                HStack(alignment: .lastTextBaseline, spacing: 8) {
                    HStack(spacing: 2) {
                        Image(systemName: "arrow.up")
                        Text("\(item.upvotes.count)")
                    }
                    HStack(spacing: 2) {
                        Image(systemName: "message")
                        Text("\(item.comments.count)")
                    }
                    HStack(spacing: 2) {
                        Image(systemName: "clock")
                        Text("\(item.createdAt, format: Date.FormatStyle().day().month().year())")
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
                
                Divider()
                    .padding(.top, 15)
                
                ForEach(item.comments) { comment in
                    CommentItem(comment: comment)
                }
                
            }//VStack end
        }//ScrollView end
        .padding()
        .navigationTitle("\(item.comments.count) Comments")
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
