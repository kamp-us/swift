//
//  DummyData.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import Foundation

class DummyData: ObservableObject {
    @Published var posts: [Post] = [
        
        Post(id: "1", title: "Content About Programming", url: "https://www.youtube.com/watch?v=kmD25Coj5Mw", site: "test", slug: "test", content: "test", userID: "1",owner:
             User(id: "1",userName: "FelfecirBoy", emailVerified: Date(), accounts: [], sessions: [], posts: [], comments: [], commentUpvotes: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [], notifies: []),
            comments: [
            Comment(id: "1", content: "Test comment content", userID: "1", owner: "FelfecirBoy", postID: "1", post: "test", parentID: "1", parent: nil, comments: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])
            ],
            upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])]

}
