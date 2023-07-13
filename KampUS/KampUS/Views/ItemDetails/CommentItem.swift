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
                Text(comment.owner)
                    .font(.system(size: 17, weight: .semibold))
                HStack(spacing: 2) {
                    Image(systemName: "arrow.up")
                    Text("\(comment.upvotes.count)")
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                            .padding(.horizontal, 10)
                    }

                    Text(comment.createdAt, format: Date.FormatStyle().day().month().year())
                }
                .font(.system(size: 16, weight: .thin))
            }//HStack end
            
            Text(comment.content)
                .font(.system(size: 14))
                .padding(.vertical, 4)
            
            Divider()
            
        }.padding(.vertical, 10)
    }
}
