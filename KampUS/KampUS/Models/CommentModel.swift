//
//  CommentModel.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 11.07.2023.
//

import Foundation

class Comment {
    let id: String
    var content: String
    
    let userID: String
    let owner: String
    
    let postID: String
    let post: String
    
    let parentID: String?
    let parent: Comment?
    
    let comments: [Comment]
    let upvotes: [Upvote]
    
    let createdAt: Date
    let updatedAt: Date
    let deletedAt: Date
    
    var notifications: [Notification]
    
    init(id: String, content: String, userID: String, owner: String, postID: String, post: String, parentID: String?, parent: Comment?, comments: [Comment], upvotes: [Upvote], createdAt: Date, updatedAt: Date, deletedAt: Date, notifications: [Notification]) {
        self.id = id
        self.content = content
        self.userID = userID
        self.owner = owner
        self.postID = postID
        self.post = post
        self.parentID = parentID
        self.parent = parent
        self.comments = comments
        self.upvotes = upvotes
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
        self.notifications = notifications
    }
    
}
