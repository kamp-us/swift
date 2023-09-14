//
//  User.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation

struct User: Codable, Identifiable  {
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

}
