//
//  HomeListCellView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import SwiftUI

struct HomeListCellView: View {
    var item: PanoHomeItem
    @State private var isSelect: Bool = false
    
    var body: some View {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.system(size:20, weight: .semibold))
                
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
                
                HStack(spacing: 16) {
                    HStack(spacing: 3) {
                        Image(systemName: "arrow.up")
                        Text("\(item.numberOfLikes)")
                    }
                    HStack(spacing: 3) {
                        Image(systemName: "bubble.left")
                        Text("\(item.numberOfComments)")
                    }
                    HStack(spacing: 3) {
                        Image(systemName: "clock")
                        Text("\(5)")
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 16) {
                        Image(systemName: "ellipsis")
                            .onTapGesture {
                                isSelect = true
                            }

                        Image(systemName: "arrow.up")
                            .onTapGesture {
                                print("Test2")
                            }

                        Image(systemName: "arrow.down")
                            .onTapGesture {
                                print("Test3")
                            }

                    }
                }
                .padding(.top, 15)
            }
            .confirmationDialog("More", isPresented: $isSelect, titleVisibility: .visible) {
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

        .padding()
    }
}


