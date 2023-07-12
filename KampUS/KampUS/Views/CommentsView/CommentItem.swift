//
//  CommentItem.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 11.07.2023.
//

import SwiftUI

struct CommentItem: View {
    var comment: Comment
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 10) {
                Text("")
                    .font(.system(size: 17, weight: .semibold))
                HStack(spacing: 2) {
                    Image(systemName: "arrow.up")
                    Text("Test")
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                            .padding(.horizontal, 10)
                    }

                    Text("comment.createdAt")
                }
                .font(.system(size: 16, weight: .thin))
            }//HStack end
            
            Text("comment.comment")
                .padding(.vertical, 4)
            
        }.padding()
    }
}
