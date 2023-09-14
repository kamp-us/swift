//
//  Upvote.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 14.07.2023.
//

import Foundation

struct Upvote: Codable, Identifiable  {
    let id: String

    let postID: String
    let post: Post

    let userID: String
    let owner: User

    let createdAt: Date
    let updatedAt: Date
    let deletedAt: Date


}
