//
//  CommentUpvote.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation


struct CommentUpvote: Codable, Identifiable  {
    let id: String

    let commentID: String
    let comment: Comment

    let userID: String
    let owner: User

    let createdAt: Date
    let updatedAt: Date
    let deletedAt: Date

}
