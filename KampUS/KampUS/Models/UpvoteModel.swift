//
//  UpvoteModel.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 12.07.2023.
//

import Foundation

class Upvote {
    let id: String
    
    let postID: String
    let post: Post
    
    let userID: String
    let owner: User
    
    let createdAt: Date
    let updatedAt: Date
    let deletedAt: Date
    
    init(id: String, postID: String, post: Post, userID: String, owner: User, createdAt: Date, updatedAt: Date, deletedAt: Date) {
        self.id = id
        self.postID = postID
        self.post = post
        self.userID = userID
        self.owner = owner
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
    
}
