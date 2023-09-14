//
//  DummyData.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import Foundation

class DummyData: ObservableObject {
    @Published var posts: [Post] = [
        
        Post(id: "1", title: "Content Title About Programming", url: "https://www.youtube.com/watch?v=kmD25Coj5Mw", site: "test", slug: "test", content: "Youtube", userID: "1",owner:
             User(id: "1",userName: "FelfecirBoy", emailVerified: Date(), accounts: [], sessions: [], posts: [], comments: [], commentUpvotes: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [], notifies: []),
            comments: [
            Comment(id: "1", content: "Test comment content", userID: "1", owner: "FelfecirBoy", postID: "1", post: "test", parentID: "1", parent: nil, comments: [Comment(id: "2", content: "This is subcomment.", userID: "1", owner: "FelfecirBoy", postID: "1", post: "test", parentID: "1", parent: nil, comments: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])
            ],
            upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: []),
        
        Post(id: "2", title: "Content Title About Programming", url: "https://www.frontendmentor.io/challenges/dictionary-web-app-h5wwnyuKFL", site: "test", slug: "test", content: "Youtube", userID: "1",owner:
             User(id: "1",userName: "FelfecirBoy", emailVerified: Date(), accounts: [], sessions: [], posts: [], comments: [], commentUpvotes: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [], notifies: []),
            comments: [
            Comment(id: "1", content: "Test comment content", userID: "1", owner: "FelfecirBoy", postID: "1", post: "test", parentID: "1", parent: nil, comments: [Comment(id: "2", content: "This is subcomment.", userID: "1", owner: "FelfecirBoy", postID: "1", post: "test", parentID: "1", parent: nil, comments: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])
            ],
            upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: []),
        
        Post(id: "3", title: "Content Title About Programming", url: "https://dictionaryapi.dev/", site: "test", slug: "test", content: "Youtube", userID: "2",owner:
             User(id: "2",userName: "FelfecirBoy", emailVerified: Date(), accounts: [], sessions: [], posts: [], comments: [], commentUpvotes: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [], notifies: []),
            comments: [
            Comment(id: "1", content: "Test comment content", userID: "1", owner: "FelfecirBoy", postID: "1", post: "test", parentID: "1", parent: nil, comments: [Comment(id: "2", content: "This is subcomment.", userID: "1", owner: "FelfecirBoy", postID: "1", post: "test", parentID: "1", parent: nil, comments: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])
            ],
            upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [])
    ]
    
    @Published var currentUser: User = User(id: "1",userName: "FelfecirBoy", emailVerified: Date(), accounts: [], sessions: [], posts: [], comments: [], commentUpvotes: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [], notifies: [])

}
