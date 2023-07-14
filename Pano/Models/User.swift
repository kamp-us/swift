//
//  User.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation

class User {
    let id: String
    var name: String?
    var userName: String?
    var email: String?
    var emailVerified: Date

    var image: String?

    var accounts: [Account]
    var sessions: [Session]

    var posts: [Post]
    var comments: [Comment]
    var commentUpvotes: [CommentUpvote]
    var upvotes: [Upvote]

    let createdAt: Date
    let updatedAt: Date
    let deletedAt: Date

    var preference: UserPreference?
    var notifications: [Notification]
    var notifies: [Notification]

    init(id: String, name: String? = nil, userName: String? = nil, email: String? = nil, emailVerified: Date, image: String? = nil, accounts: [Account], sessions: [Session], posts: [Post], comments: [Comment], commentUpvotes: [CommentUpvote], upvotes: [Upvote], createdAt: Date, updatedAt: Date, deletedAt: Date, preference: UserPreference? = nil, notifications: [Notification], notifies: [Notification]) {
        self.id = id
        self.name = name
        self.userName = userName
        self.email = email
        self.emailVerified = emailVerified
        self.image = image
        self.accounts = accounts
        self.sessions = sessions
        self.posts = posts
        self.comments = comments
        self.commentUpvotes = commentUpvotes
        self.upvotes = upvotes
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
        self.preference = preference
        self.notifications = notifications
        self.notifies = notifies
    }

}
