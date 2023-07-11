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
                Text(comment.commentAuthor)
                    .font(.system(size: 17, weight: .semibold))
                HStack(spacing: 2) {
                    Image(systemName: "arrow.up")
                    Text("\(comment.subCommentCount)")
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                            .padding(.horizontal, 10)
                    }

                    Text(comment.createdAt)
                }
                .font(.system(size: 16, weight: .thin))
            }//HStack end
            
            Text(comment.comment)
                .padding(.vertical, 4)
            
        }.padding()
    }
}

struct CommentItem_Previews: PreviewProvider {
    static var previews: some View {
        CommentItem(comment: Comment(authotID: UUID(), comment: "Test Comment and very and very long. Lorem ipsum dolar sit ames and something similar with that!", commentAuthor: "Test author", commentLike: 3, subCommentCount: 2, createdAt: "14 March 2021")
        )
    }
}
