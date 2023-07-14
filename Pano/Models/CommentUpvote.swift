//
//  CommentUpvote.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation


class CommentUpvote {
    let id: String

    let commentID: String
    let comment: Comment

    let userID: String
    let owner: User

    let createdAt: Date
    let updatedAt: Date
    let deletedAt: Date

    init(id: String, commentID: String, comment: Comment, userID: String, owner: User, createdAt: Date, updatedAt: Date, deletedAt: Date) {
        self.id = id
        self.commentID = commentID
        self.comment = comment
        self.userID = userID
        self.owner = owner
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }

}
