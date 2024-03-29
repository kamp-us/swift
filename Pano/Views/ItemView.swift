//
//  TestView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 10.07.2023.
//

import SwiftUI
import LinkPreview

struct HomePanoItemView: View {
    @EnvironmentObject var userDefaults: UserDefaults
    let item: Post
    
    @State var togglePreview = false
    @State private var isMore: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(item.content)
                .padding(.vertical, 3)
                .padding(.horizontal, 10)
                .font(.system(size: 14))
                .background {
                    Color(.gray).opacity(0.3)
                }
                .cornerRadius(20)
            
            Text(item.title)
            
            if userDefaults.isPreview {
                LinkPreview(url: URL(string: item.url ?? "www.google.com"))
                    .fixedSize(horizontal: false, vertical: true)
            } else {
                if item.url != nil {
                    Link(destination: URL(string: item.url ?? "www.google.com")!) {
                        Text("Click this and go to content.")
                    }.padding(.vertical)
                }
            }

            
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
                    Text("5h")
                    
                }
                
                Spacer()
                
                Button {
                    isMore = true
                } label: {
                    Image(systemName: "ellipsis")
                    
                        .tint(.primary)
                }.buttonStyle(.borderless)
                
                Button {
                    print("UpVote Tapped")
                } label: {
                    Image(systemName: "arrow.up")
                    
                        .tint(.primary)
                }.buttonStyle(.borderless)
                
                Button {
                    print("DownVote Tapped")
                } label: {
                    Image(systemName: "arrow.down")
                    
                        .tint(.primary)
                }.buttonStyle(.borderless)
            }
            .font(.system(size: 16))
            
        }
        .confirmationDialog("More", isPresented: $isMore, titleVisibility: .visible) {
            Button {
                
            } label: {
                Text("First Action")
            }
            
            Button {
                
            } label: {
                Text("Second Action")
            }
            
            Button {
                
            } label: {
                Text("Third Action")
            }
            
        }
    }
}
