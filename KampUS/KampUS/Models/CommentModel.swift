//
//  CommentModel.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 11.07.2023.
//

import Foundation

struct Comment: Identifiable, Hashable {
    var id = UUID()
    var authotID: UUID
    var comment: String
    var commentAuthor: String
    var commentLike: Int
    var subCommentCount: Int
    var createdAt: String
}
