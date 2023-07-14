//
//  Post.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation

class Post: Identifiable {
    let id: String
    let title: String
    let url: String?
    let site: String?
    let slug: String
    let content: String

    let userID: String
    let owner: User

    var comments: [Comment] = []
    var upvotes: [Upvote] = []

    let createdAt: Date
    let updatedAt: Date
    let deletedAt: Date

    var notifications: [Notification]

    init(id: String, title: String, url: String?, site: String?, slug: String, content: String, userID: String, owner: User, comments: [Comment], upvotes: [Upvote], createdAt: Date, updatedAt: Date, deletedAt: Date, notifications: [Notification]) {
        self.id = id
        self.title = title
        self.url = url
        self.site = site
        self.slug = slug
        self.content = content
        self.userID = userID
        self.owner = owner
        self.comments = comments
        self.upvotes = upvotes
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
        self.notifications = notifications
    }

}
