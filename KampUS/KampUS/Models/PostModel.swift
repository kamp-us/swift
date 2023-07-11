//
//  PostModel.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 9.07.2023.
//

import Foundation

struct PanoHomeItem: Hashable, Identifiable {
    var id = UUID()
    var title: String
    var url: String
    var authorName: String
    var numberOfComments: Int
    var createdAtText: String
    var numberOfLikes: Int
}
