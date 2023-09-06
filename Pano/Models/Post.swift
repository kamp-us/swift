//
//  Post.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation

struct Post: Identifiable {
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

}
