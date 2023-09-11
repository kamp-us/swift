//
//  Notification.swift
//  Pano
//
//  Created by Serdar Onur KARADAĞ on 6.09.2023.
//

import Foundation


struct Notification: Codable, Identifiable {
    var id: String
    var notifies: User
    var notifiesUserID: String
    var triggeredBy: User
    var triggeredByUserID: String
    var createdAt: Date
    var type: NotificationType
    var post: Post
    var postID: String
    var comment: Comment
    var commentID: String
    var read: Bool
    var url: String
}

enum NotificationType: Codable {
  case upvotecomment
  case upvotepost
  case comment
  case reply
}
